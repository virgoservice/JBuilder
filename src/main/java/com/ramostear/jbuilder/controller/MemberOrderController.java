package com.ramostear.jbuilder.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.ramostear.jbuilder.consts.SysConsts;
import com.ramostear.jbuilder.entity.CancelOrder;
import com.ramostear.jbuilder.entity.InvalidDate;
import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.exception.BusinessException;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.kit.alipay.AlipayManager;
import com.ramostear.jbuilder.service.CancelOrderService;
import com.ramostear.jbuilder.service.CheckTicketService;
import com.ramostear.jbuilder.service.InvalidDateService;
import com.ramostear.jbuilder.service.OrderChildService;
import com.ramostear.jbuilder.service.OrderService;
import com.ramostear.jbuilder.service.ScenicSpotService;
import com.ramostear.jbuilder.service.TicketGroupService;
import com.ramostear.jbuilder.service.TicketService;
import com.ramostear.jbuilder.service.UserService;
import com.ramostear.jbuilder.util.DateUtil;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年6月28日 下午3:09:05 
* @email:361801580@qq.com
 */
@Controller
@RequestMapping("/member/order")
public class MemberOrderController {
	
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private OrderChildService orderChildService;
	
	@Autowired
	private CancelOrderService cancelOrderService;
	@Autowired
	private TicketService ticketService;
	@Autowired
	private CheckTicketService checkTicketService;
	@Autowired
	private ScenicSpotService scenicSpotService;
	@Autowired
	private TicketGroupService ticketGroupService;
	@Autowired
	private UserService userService;
	@Autowired
	private InvalidDateService invalidDateServicel;
	
	/**
	 * 用户下单
	 * @param model
	 * @param order
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public Result add(Order order,String checkcode,HttpSession session){
		String code = (String)session.getAttribute(SysConsts.VERIFY_CODE);
		if(checkcode==null||!code.toLowerCase().equals(checkcode.toLowerCase())){
			throw new BusinessException("验证码不正确！");
		}
		
		Result result = new Result();
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		if(user==null)
			user=new User();
			user.setId(9L);
		order.setUserId(user.getId());//用户id
		//保存订单和子订单
		Order res=this.orderService.save(order, order.getList());
		result.setSuccess(true);
		result.setObj(res);
		
		return result;
	}
	
	/**
	 * 取消订单
	 * @param orderId
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public Result delete(Long orderId,HttpSession session){
		
		Result result = new Result();
		
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		if(user==null)
			user=new User();
			user.setId(9L);
			
		Order order=this.orderService.findByIdAndUid(orderId, user.getId());
		if(order==null){
			throw new BusinessException("订单不存在!");
		}
		if("1".equals(order.getPayStatus())){
			throw new BusinessException("订单已付款无法取消!");
		}
		
		if(order.getList().get(0)!=null){
			this.orderChildService.delete(order.getList().get(0).getId());
		}
		
		this.orderService.delete(orderId);

		result.setSuccess(true);
		
		return result;
	}
	
	/**
	 * 跳转到下单界面
	 * @param model
	 * @param ticId
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/toBook",method=RequestMethod.GET)
	public String toBook(Model model,Long ticId,HttpSession session){
		Ticket ticket=this.ticketService.findById(ticId);
		if(ticket==null){
			throw new BusinessException("商品不存在！");
		}
		
		//存储无效日期
		List<InvalidDate> inList=this.invalidDateServicel.findByTId(ticId);
		
		StringBuffer sb=new StringBuffer();
		
		for(InvalidDate item :inList){
			
			List<Date> dlist=DateUtil.getBetweenDates(item.getBeginDate(), item.getEndDate());
			
			for(Date d :dlist){
				sb.append(",\'"+DateUtil.getDateYYYYMMDD(d)+"\'");
			}
		} 
		
		model.addAttribute("ticket",ticket);
		model.addAttribute("dlist",sb.substring(1, sb.length()));
		System.out.println(sb.substring(1, sb.length()));
		return "member/book";
	}
	
	/**
	 * 用户订单记录
	 * @param req
	 * @param model
	 * @param session
	 * @param beginTime
	 * @param endTime
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String userList(ReqDto req,Model model,HttpSession session,String payStatus){
		
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		
		if(user==null)
			user=new User();
			user.setId(9L);
		
		model.addAttribute("list", this.orderService.findByPageByUid(req.getPageNo(), req.getPageSize(), "id", true,user.getId()));
		
		
		return "member/all_order";
	}
	
	/**
	 * 订单详情
	 * @param orderid
	 * @return
	 */
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String detail(Model model,Long orderid,HttpSession session){
		
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		if(user==null)
			user=new User();
			user.setId(9L);
		
		Order order=this.orderService.findByIdAndUid(orderid, user.getId());
		if(order==null){
			throw new BusinessException("订单不存在");
		}
		
		List<OrderChild> child=this.orderChildService.getAllByOid(order.getId());
		
		Ticket ticket=this.ticketService.findById(child.get(0).getTicketId());
		model.addAttribute("check",this.checkTicketService.findByOid(order.getId()));
		model.addAttribute("ticket",ticket);
		model.addAttribute("child",child.get(0));
		model.addAttribute("scenic",this.scenicSpotService.findById(ticket.getScenicId()));
		model.addAttribute("order",order);
		model.addAttribute("user",this.userService.findById(order.getUserId()));
		
		return "member/detail";
	}
	
	/**
	 * 申请退票
	 * @param orderId 子订单id
	 * @param num	退票数量
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/returnTicket",method=RequestMethod.POST)
	public Result returnTicket(Long corderId,Integer num,HttpSession session){
		
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		if(user==null)
			user=new User();
			user.setId(9L);
		//是否持有该订单
		Long userId=user.getId();
		
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
	 * 查看退票信息
	 * @param corderId
	 * @param num
	 * @param session
	 * @return
	 */ 
	@RequestMapping(value="/returnTicketMes",method=RequestMethod.GET)
	public String returnTicketMes(Model model,Long corderId,HttpSession session){
		
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		if(user==null)
			user=new User();
			user.setId(9L);
		
		//是否持有该订单
		Long userId=user.getId();
		
		OrderChild child=this.orderChildService.findById(corderId);
		if(child==null){
			throw new BusinessException("订单不存在！");
		}
		Order order=this.orderService.findByIdAndUid(child.getOrderId(), userId);
		if(order==null){
			throw new BusinessException("订单不存在！");
		}
		
		List<CancelOrder> cancel=this.cancelOrderService.findByCancelOrderId(corderId);
		
		model.addAttribute("cancel",cancel);
		model.addAttribute("child",child);
		
		return "member/returnDetail";
	}
	
	/**
	 * 发起付款
	 * @param orderId 主订单id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/payTicket",method=RequestMethod.GET,produces = "text/html;charset=utf-8")
	public String payTicket(Long orderId,String returnType,HttpSession session){
		
		//用户是否持有该定订单
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		if(user==null)
			user=new User();
			user.setId(9L);
			
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
		//处理跳转到列表还是直接关闭
		if(returnType==null)
			alipayRequest.setReturnUrl(AlipayManager.RETURN_URL);
		else
			alipayRequest.setReturnUrl(AlipayManager.RETURN_LIST);
		
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
	 * 跳转到付款界面
	 * @param model
	 * @param ticId
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/toPay",method=RequestMethod.GET)
	public String toPay(Model model,Long orderId,HttpSession session){
		
		//用户是否持有该定订单
		User user=(User)session.getAttribute(SysConsts.LOGIN_USER);
		if(user==null)
			user=new User();
			user.setId(9L);
		
		Order order=this.orderService.findByIdAndUid(orderId, user.getId());
		
		if(order==null){
			throw new BusinessException("订单不存在！");
		}
		
		model.addAttribute("order",order);
		
		return "member/payment";
	}
	
}
