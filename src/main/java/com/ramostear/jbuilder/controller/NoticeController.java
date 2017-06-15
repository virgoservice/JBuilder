/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月14日 下午5:16:46
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ramostear.jbuilder.entity.CancelOrder;
import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.kit.ziyoubaokit.XmlTemplate;
import com.ramostear.jbuilder.service.CancelOrderService;
import com.ramostear.jbuilder.service.OrderChildService;
import com.ramostear.jbuilder.service.OrderService;
import com.ramostear.jbuilder.util.StaxonUtils;
/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月14日 下午5:16:46 
 * @email:361801580@qq.com 
 */
@Controller
@RequestMapping("/order/notice")
public class NoticeController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderChildService childService;
	@Autowired
	private CancelOrderService cancelService;
	
	/**
	 * 订单完结通知
	 * @param orderCode 订单号
	 * @param status 状态 cancel/取消:success/完成
	 * @param checkNum  检票数量
	 * @param returnNum 退票数量
	 * @param total 总数量
	 * @param sign 签名 md5(orderCode={orderCode}{privateKey})
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/complate",method=RequestMethod.POST)
	public String complate(String orderCode,String status,String checkNum,String returnNum,String total,String sign){

		//验证请求
		String md5str="orderCode="+ orderCode +XmlTemplate.p.getProperty("privateKey");
		String md5=StaxonUtils.getMD5(md5str);
		
		if(!md5.equals(sign)){
			return "error";
		}
		
		Order order=this.orderService.findByOrderCode(orderCode);
		if(order==null){
			return "error";
		}
		
		//如果已经更新了订单
		if(!"3".equals(order.getStatus())){
			order.setStatus("3");//已结算
			Integer st=1;//检票完成
			if(returnNum.equals(total))
				st=2;//退票完成
			
			order.setZiyoubaoStatus(st);
			order.setCheckNum(Integer.parseInt(checkNum));
			order.setReturnNum(Integer.parseInt(returnNum));
			order.setTotal(Integer.parseInt(total));
			this.orderService.update(order);
			//记录通知日志
		}
		
		return "success";
	}
	
	/**
	 * 退票通知
	 * @param orderCode 订单号
	 * @param subOrderCode 子订单号
	 * @param retreatBatchNo 退票批次号（退票时智游宝返回）
	 * @param auditStatus failure/success审核状态:失败/成功
	 * @param returnNum 退票数量
	 * @param sign 签名md5({orderCode}{privateKey})
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/return",method=RequestMethod.POST)
	public String returnTicket(String orderCode,String subOrderCode,String retreatBatchNo,String auditStatus,String returnNum,String sign){
		
		//验证请求
		String md5str=orderCode +XmlTemplate.p.getProperty("privateKey");
		String md5=StaxonUtils.getMD5(md5str);
		
		if(!md5.equals(sign)){
			return "error";
		}
		
		if("success".equals(auditStatus)){
			OrderChild child=this.childService.findByOrderCode(subOrderCode);
			if(child!=null&&child.getNoticeStatus().equals("0")){
				//更新订单和订单日志
				//发起退款支付
				//***
					
				child.setStatus("3");	//已退款流程
				child.setNoticeStatus("1");//已接收通知
				child.setReturnStatus("1");//已经退款状态
				this.childService.update(child);
					
				//更改退单记录
				CancelOrder cancel=this.cancelService.findByChildOrderId(child.getId());
				cancel.setStatus("1");
				cancel.setResult(auditStatus);
				this.cancelService.update(cancel);
			}
		}else if("failure".equals(auditStatus)){
			//退票失败
			OrderChild child=this.childService.findByOrderCode(subOrderCode);
			if(child!=null&&child.getNoticeStatus().equals("0")){
				//更新订单和订单日志
				
				child.setStatus("2");	//退票失败
				child.setNoticeStatus("1");//已接收通知
				this.childService.update(child);
					
				//更改退单记录
				CancelOrder cancel=this.cancelService.findByChildOrderId(child.getId());
				cancel.setStatus("1");
				cancel.setResult(auditStatus);
				this.cancelService.update(cancel);
			}
			
		}else{
			return "";
		}
		
		
		return "success";
	}
	
	/**
	 * 核销通知
	 * @param orderCode 订单号
	 * @param subOrderCode 自订单号
	 * @param status  check:检票
	 * @param checkNum 检票数量
	 * @param returnNum 退票数量
	 * @param total 总数量
	 * @param sign 签名
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/checkTicket",method=RequestMethod.POST)
	public String checkTicket(String order_no,String subOrderCode,String status,Integer checkNum ,Integer returnNum ,Integer total ,String sign){
		
		//验证请求
		String md5str="order_no="+order_no +XmlTemplate.p.getProperty("privateKey");
		String md5=StaxonUtils.getMD5(md5str);
		
		if(!md5.equals(sign)){
			return "签名错误";
		}
		
		OrderChild child=this.childService.findByOrderCode(subOrderCode);
		
		if(child!=null&&child.getNoticeStatus().equals("0")){
			
			//更新订单和订单日志
			child.setStatus("4");	//已退完成
			child.setNoticeStatus("1");//已接收通知
			this.childService.update(child);
					
		}
		
		
		
		return "success";
	}
}

	
