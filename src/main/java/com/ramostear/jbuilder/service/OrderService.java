/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月12日 下午5:15:45
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.UserException;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月12日 下午5:15:45 
 * @email:361801580@qq.com 
 */
public interface OrderService {
	
	/**
	 * 保存订单
	 * @param order
	 * @param childOrder
	 * @return
	 */
	public boolean save(Order order,List<OrderChild> childOrders);
	
	public boolean update(Order order);
	
	public boolean delete(Long id);
	/**
	 * 取消订单
	 * @param id
	 */
	public boolean cancelOrder(Long id);
	
	public Order findById(Long id);
	
	public Order findByOrderCode(String orderCode);
	
	public List<Order> findAll();
	
	public PageDto<Order> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("orderCode")String orderCode);


}
