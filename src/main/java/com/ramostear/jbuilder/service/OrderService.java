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
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqCancelOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqOrderVO;

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
	 * @throws Exception 
	 */
	public boolean save(Order order,List<OrderChild> childOrders);
	/**
	 * 订单付款后续
	 * @return
	 */
	public ReqOrderVO payOrder(Long orderId);
	
	public boolean update(Order order);
	
	public boolean delete(Long id);
	/**
	 * 取消订单
	 * @param id
	 */
	public boolean cancelOrder(Long id);
	
	/**
	 * 退票
	 * @param id 子订单id
	 * @param num 退票数量
	 * @return
	 */
	ReqCancelOrderVO returnTicket(Long id, Integer num);
	
	public Order findById(Long id);
	//根据用户id和id查询
	public Order findByIdAndUid(Long id,Long uid);
	
	public Order findByOrderCode(String orderCode);
	
	public List<Order> findAll();
	
	public PageDto<Order> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("orderCode")String orderCode);

	/**
	 * 查询用户订单
	 * @param offset
	 * @param size
	 * @param orderBy
	 * @param order
	 * @param orderCode
	 * @return
	 */
	public PageDto<Order> findByPageByUid(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("uid")String uid);
	

}
