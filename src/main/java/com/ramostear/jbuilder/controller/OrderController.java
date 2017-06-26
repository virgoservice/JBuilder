/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月14日 下午2:07:10
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.ramostear.jbuilder.entity.CheckTicket;
import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.exception.BusinessException;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.service.CheckTicketService;
import com.ramostear.jbuilder.service.OrderChildService;
import com.ramostear.jbuilder.service.OrderService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月14日 下午2:07:10 
 * @email:361801580@qq.com 
 */
@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderChildService orderChildService;
	@Autowired
	private CheckTicketService checkTicketService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(){
		return "order/index";
	}
	
	/**
	 * 用户下单
	 * @param model
	 * @param order
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public Result add(Order order){
		Result result = new Result();
		
		order.setUserId(1L);//用户id
		//保存订单和子订单
		boolean res=this.orderService.save(order, order.getList());
		result.setSuccess(res);
		
		Map<String, Object> map = new HashMap<String, Object>();  
		map.put("mes", "test message");
		map.put("code", 0);
		result.setObj(map);
		
		return result;
	}
	
	/**
	 * 申请退票
	 * @param orderId 子订单id
	 * @param num	退票数量
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/returnTicket",method=RequestMethod.POST)
	public Result returnTicket(Long corderId,Integer num){
		//是否持有该订单
		Long userId=1L;
		
		OrderChild child=this.orderChildService.findById(corderId);
		if(child==null){
			throw new BusinessException("订单不存在！");
		}
		Order order=this.orderService.findByIdAndUid(child.getOrderId(), userId);
		if(order==null){
			throw new BusinessException("订单不存在！");
		}
		
		
		boolean req=this.orderService.returnTicket(corderId,num);
		
		Result result = new Result();
		result.setSuccess(req);
		
		return result;
	}
	
	/**
	 * 待检票列表
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/checkTicketList",method=RequestMethod.GET)
	public String checkTicketList(ReqDto req,Model model,String search){
		
		model.addAttribute("list", this.orderChildService.findCheckByPage(req.getPageNo(), req.getPageSize(), "id", true,search));
		
		return JSON.toJSONString(this.orderChildService.findCheckByPage(req.getPageNo(), req.getPageSize(), "id", true,search));
	}
	
	
	/**
	 * 检票
	 * @param corderId
	 * @param num
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/checkTicket",method=RequestMethod.POST)
	public Result checkTicket(Long corderId,Integer num,HttpSession session){
		//是否持有该订单
		Long userId=1L;
		
		OrderChild child=this.orderChildService.findById(corderId);
		if(child==null){
			throw new BusinessException("子订单不存在！");
		}
		Order order=this.orderService.findByIdAndUid(child.getOrderId(), userId);
		if(order==null){
			throw new BusinessException("订单不存在！");
		}
		if("0".equals(order.getPayStatus())){
			throw new BusinessException("该订单未付款");
		}
		
		boolean req=this.orderService.checkOrder(corderId,num);
		
		//保存检票信息
		if(req){
			CheckTicket ct=new CheckTicket();
			ct.setCheckNum(num);
			ct.setCheckTime(new Date());
			ct.setGoodName(child.getGoodsName());
			ct.setOrderCID(corderId);
			ct.setOrderID(child.getOrderId());
			ct.setCheckUserID(userId);
			
			this.checkTicketService.add(ct);
		}
		Result result = new Result();
		result.setSuccess(req);
		
		return result;
	}

}
