/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月21日 上午11:06:00
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayTradeRefundRequest;
import com.alipay.api.response.AlipayTradeRefundResponse;
import com.ramostear.jbuilder.entity.CancelOrder;
import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.exception.BusinessException;
import com.ramostear.jbuilder.kit.alipay.AlipayManager;
import com.ramostear.jbuilder.service.AlipayService;
import com.ramostear.jbuilder.service.CancelOrderService;
import com.ramostear.jbuilder.service.OrderChildService;
import com.ramostear.jbuilder.service.OrderService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月21日 上午11:06:00 
 * @email:361801580@qq.com 
 */
@Service("alipayService")
public class AlipayServiceImpl implements AlipayService {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderChildService orderChildService;
	@Autowired
	private CancelOrderService cancelOrderService;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.AlipayService#AlipayNotice(java.util.Map)
	 * 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
	 * 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
	 * 3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email），
	 * 4、验证app_id是否为该商户本身。上述1、2、3、4有任何一个验证不通过，则表明本次通知是异常通知，务必忽略。
	 * 在上述验证通过后商户必须根据支付宝不同类型的业务通知，正确的进行不同的业务处理，并且过滤重复的通知结果数据。
	 * 在支付宝的业务通知中，只有交易通知状态为TRADE_SUCCESS或TRADE_FINISHED时，支付宝才会认定为买家付款成功。
	 */
	@Override
	public boolean AlipayNotice(Map<String, String> params) {
		
		//处理订单逻辑
		String orderNo=params.get("out_trade_no");
		String tradeStatus=params.get("trade_status");
		String total_amount=params.get("total_amount");
		String app_id=params.get("app_id");
		
		Order order=this.orderService.findByOrderCode(orderNo);
		
		if(order==null){
			return false;
		}
		if("1".equals(order.getPayStatus())){//已付款
			return false;
		}
		
		if(order.getOrderPrice()!=Double.parseDouble(total_amount)){
			return false;
		}
		if(!app_id.equals(AlipayManager.APP_ID)){
			return false;
		}
		
		
		if(tradeStatus.equals("TRADE_FINISHED")){
			//退款期限最长3个月。
			//暂不处理
			
		}else if (tradeStatus.equals("TRADE_SUCCESS")){
			//更新订单信息
			this.orderService.payOrder(order.getId());
			
		}

		return true;
	}

	@Override
	public boolean AlipayRefunds(Long cancelOrderId) {
		
		AlipayClient alipayClient = AlipayManager.getIstance();
		AlipayTradeRefundRequest request = new AlipayTradeRefundRequest();
		
		CancelOrder cancel=this.cancelOrderService.findById(cancelOrderId);
		if(cancel==null){
			throw new BusinessException("退单不存在！");
		}
		if("1".equals(cancel.getStatus())){
			throw new BusinessException("该退单已经退款！");
		}
		
		OrderChild child=this.orderChildService.findById(cancel.getChildOrderId());
		if(child==null){
			throw new BusinessException("子订单不存在！");
		}
		
		Order order=this.orderService.findById(cancel.getOrderId());
		if(order==null){
			throw new BusinessException("订单不存在！");
		}
		
		
		Map<String, Object> map = new HashMap<String, Object>();  
		map.put("out_trade_no", order.getOrderCode());
		map.put("refund_amount", child.getPrice()*cancel.getNum());
		map.put("refund_reason", "正常退款");
		map.put("out_request_no",cancel.getCancelOrderCode());
		map.put("operator_id","1");//用户id
		
		request.setBizContent(JSON.toJSONString(map));
		AlipayTradeRefundResponse response;
		try {
			response = alipayClient.execute(request);
			
			if (response.isSuccess()) {
				
				child.setStatus("3");	//已退款流程
				child.setNoticeStatus("1");//已接收通知
				child.setReturnStatus("1");//已经退款状态
				this.orderChildService.update(child);
					
				//更改退单记录
				if(cancel!=null){
					cancel.setStatus("1");//已退款
					cancel.setResult("success");
					this.cancelOrderService.update(cancel);
				}
				//更新订单退票数量
				order.setReturnNum((order.getReturnNum()+cancel.getNum()));
				this.orderService.update(order);
				
				System.out.println(response.getBody());
				return true;
			} else {
				System.out.println(response.getBody());
				throw new BusinessException("退款失败");
			}
		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		return false;
	}

}
