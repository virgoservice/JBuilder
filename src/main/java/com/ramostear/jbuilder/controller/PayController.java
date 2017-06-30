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
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
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
@RequestMapping("/order/pay")
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
	
	
	@ResponseBody
	@RequestMapping(value="/reload",method=RequestMethod.GET,produces = "text/html;charset=utf-8")
	public String reload(){
		return "<script type='text/javascript'>window.opener.location.reload();window.close()</script>";
	}
	
	
	
}
