/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月20日 下午4:00:26
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.ramostear.jbuilder.consts.SysConsts;
import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.exception.BusinessException;
import com.ramostear.jbuilder.kit.alipay.AlipayManager;
import com.ramostear.jbuilder.service.AlipayService;
import com.ramostear.jbuilder.service.OrderChildService;
import com.ramostear.jbuilder.service.OrderService;
import com.ramostear.jbuilder.service.TicketService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月20日 下午4:00:26 
 * @email:361801580@qq.com 
 */
@Controller
@RequestMapping("/admin/order/pay")
public class PayController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private TicketService ticketService;
	@Autowired
	private OrderChildService orderChildService;
	@Autowired
	private AlipayService alipayService;

	/**
	 * 发起付款
	 * @param orderId 主订单id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/payTicket",method=RequestMethod.GET,produces = "text/html;charset=utf-8")
	public String payTicket(Long orderId,HttpSession session){
		
		//用户是否持有该定订单
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		
		Order order=this.orderService.findByIdAndUid(orderId, user.getId());
		if(order==null){
			throw new BusinessException("订单不存在！");
		}
		
		//如果有多个子订单把名称一起显示
		String subject="";
		List<OrderChild> list=this.orderChildService.getAllByOid(orderId);
		for(OrderChild o:list){
			subject+=o.getGoodsName()+" ";
		}
		
		AlipayClient alipayClient = AlipayManager.getIstance();	
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setNotifyUrl(AlipayManager.NOTIFY_URL);
		
		Map<String, Object> map = new HashMap<String, Object>();  
		map.put("out_trade_no", order.getOrderCode());
		map.put("product_code", "FAST_INSTANT_TRADE_PAY");
		map.put("total_amount", order.getOrderPrice());
		map.put("subject", subject);
		

		alipayRequest.setBizContent(JSON.toJSONString(map));
		String form = "";
		try {
			form = alipayClient.pageExecute(alipayRequest).getBody();
		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		System.out.println(form);
		return form;
	} 
	
	/**
	 * 支付结果异步通知处理付款后业务
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/payResultNotice",method=RequestMethod.POST)
	public String payResultNotice(HttpServletRequest request){
		//获取支付宝POST过来反馈信息
		Map<String,String> params = new HashMap<String,String>();
		Map<String,String[]> requestParams = request.getParameterMap();
		
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			//valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		
		try {
			//验签
			boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayManager.ALIPAY_PUB_KEY, "UTF-8", "RSA2");
			
			if(signVerified){
				//处理后续业务逻辑
				this.alipayService.AlipayNotice(params);
			}else{
				//验签失败，记录日志
				
				return "failure";
			}
			
			return "success";
		} catch (AlipayApiException e) {
			e.printStackTrace();
			
		}

		return "success";
	}
	
	/**
	 * 管理员处理退款
	 * @param orderId
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/refunds",method=RequestMethod.POST)
	public String refunds(Long cancelOrderId,HttpSession session){
		//考虑权限处理
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		
		this.alipayService.AlipayRefunds(cancelOrderId,user.getId());
		return "success";
	}
}
