/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月12日 下午5:17:09
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ramostear.jbuilder.dao.OrderChildDao;
import com.ramostear.jbuilder.dao.OrderDao;
import com.ramostear.jbuilder.dao.TicketDao;
import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.UserException;
import com.ramostear.jbuilder.service.OrderService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月12日 下午5:17:09 
 * @email:361801580@qq.com 
 */
@Transactional
@Service("orderService")
public class OrderServiceImpl implements OrderService {

	
	@Autowired
	private OrderDao odao;
	@Autowired
	private OrderChildDao cdao;
	@Autowired
	private TicketDao tdao;
	
	/**
	 * 保存订单和子订单
	 * @throws UserException 
	 */ 
	@Override
	public boolean save(Order order,List<OrderChild> childOrders){
		
		//校验订单金额是否正确
		for(OrderChild co : childOrders){
			Ticket temp=tdao.findById(co.getTicketId());
			if(temp==null){
				//异常,商品不存在
			}
			//生成子订单
			co.setOrderCode("123");//订单编号生成策略
			co.setCreateTime(new Date());
			co.setGoodsCode(temp.getGoodsCode());
			co.setGoodsName(temp.getName());
			co.setPrice(temp.getPrice());
			co.setTotalPrice(temp.getPrice()*co.getQuantity());//总价
			
			order.setOrderPrice(order.getOrderPrice()+co.getTotalPrice());//订单总价
		}
		
		order.setCreateTime(new Date());
		odao.save(order);
		//保存子订单
		for(OrderChild co : childOrders){
			co.setOrderId(order.getId());
			cdao.save(co);
		}
		
		return true;
	}

	@Override
	public boolean cancelOrder(Long id) {
		Order order=this.odao.findById(id);
		if(order!=null&&order.getPayStatus()=="1"){//已付款
			order.setStatus("2");
			this.odao.update(order);
			return true;
		}
		return false;
	}
	
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#update(com.ramostear.jbuilder.entity.Order)
	 */
	@Override
	public boolean update(Order order) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		this.odao.delete(id);
		this.cdao.deleteByPid(id);
		return true;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#findById(java.lang.Long)
	 */
	@Override
	public Order findById(Long id) {
		return this.odao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#findByOrderCode(java.lang.String)
	 */
	@Override
	public Order findByOrderCode(String orderCode) {
		return this.odao.findByOrderCode(orderCode);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#findAll()
	 */
	@Override
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return this.odao.findAll();
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<Order> findByPage(int offset, int size, String orderBy,
			boolean order, String orderCode) {
		List<Order> list = odao.findByPage((offset-1)*size, size, orderBy, order,orderCode);
		Long totalSize = odao.size();
		return new PageDto<Order>(totalSize,offset,size,list);
	}

	

}
