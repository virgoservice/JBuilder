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

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.kit.Result;
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
	

}
