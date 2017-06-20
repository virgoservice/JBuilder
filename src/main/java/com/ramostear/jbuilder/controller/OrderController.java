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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.exception.BusinessException;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqCancelOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqVO;
import com.ramostear.jbuilder.service.OrderChildService;
import com.ramostear.jbuilder.service.OrderService;
import com.ramostear.jbuilder.service.ZiyoubaoService;
import com.ramostear.jbuilder.util.DateUtil;

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
	private ZiyoubaoService ziyoubao;
	@Autowired
	private OrderChildService orderChildService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(){
		return "order/index";
	}
	
	@ResponseBody
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public Result add(Model model,Order order){
		Result result = new Result();
		
		order.setUserId(1L);//用户id
		//保存订单和子订单
		boolean res=this.orderService.save(order, order.getList());
		result.setSuccess(res);
		
		Map<String, Object> map = new HashMap<String, Object>();  
		map.put("mes", 111);
		map.put("code", 0);
		result.setObj(map);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/queryCancelStatus",method=RequestMethod.POST)
	public Result queryCancelStatus(String retreatBatchNo){
		Result result = new Result();
		
		ReqVO req=this.ziyoubao.queryCancelResult(retreatBatchNo);
		
		result.setSuccess(true);
		result.setObj(req);
		
		return result;
	}
	
	/**
	 * 此处做测试，移动到付款完成后的逻辑里面
	 * 订单付款后续逻辑,发起zhiyoubao购票
	 */
	@ResponseBody
	@RequestMapping(value="/orderPay",method=RequestMethod.POST)
	public Result orderPay(Long orderId){
		
		ReqOrderVO req=this.orderService.payOrder(orderId);
		
		Result result = new Result();
		result.setObj(req);
		
		return result;
	}
	
	/**
	 * 退票
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
		
		ReqCancelOrderVO req=this.orderService.returnTicket(corderId,num);
		
		Result result = new Result();
		result.setObj(req);
		
		return result;
	}
	
	/**
	 * 查询退票信息
	 * @param retreatBatchNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/queryReturn",method=RequestMethod.POST)
	public Result queryReturn(String retreatBatchNo){
		
		ReqVO req=this.ziyoubao.queryCancelResult(retreatBatchNo);
		
		Result result = new Result();
		result.setObj(req);
		
		return result;
	}
	
	/**
	 * 改签游玩时间.
	 * 限制：需要智游宝票型配置支持才行
	 */
	@ResponseBody
	@RequestMapping(value="/changeOCC",method=RequestMethod.POST)
	public Result changeOCC(String cOrderCode,Date newDate){
		//如果功能定位为用户操作，判断用户是否持有改订单
		
		ReqVO req=this.ziyoubao.modifyOccDate(cOrderCode, DateUtil.getDateYYYYMMDD(newDate));
		
		Result result = new Result();
		result.setObj(req);
		
		return result;
	}

}
