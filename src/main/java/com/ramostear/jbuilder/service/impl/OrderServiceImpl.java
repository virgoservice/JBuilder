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

import com.ramostear.jbuilder.dao.CancelOrderDao;
import com.ramostear.jbuilder.dao.CheckTicketDao;
import com.ramostear.jbuilder.dao.OrderChildDao;
import com.ramostear.jbuilder.dao.OrderDao;
import com.ramostear.jbuilder.dao.TicketDao;
import com.ramostear.jbuilder.entity.CancelOrder;
import com.ramostear.jbuilder.entity.Order; 
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.exception.BusinessException;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.OrderService;
import com.ramostear.jbuilder.util.OrderCodeGenerator;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月12日 下午5:17:09 
 * @email:361801580@qq.com 
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {

	
	@Autowired
	private OrderDao odao;
	@Autowired
	private OrderChildDao cdao;
	@Autowired
	private TicketDao tdao;
	@Autowired
	private CancelOrderDao cancel;
	@Autowired
	private CheckTicketDao checkDao;

	/**
	 * 保存订单和子订单
	 * @throws BusinessException 
	 */ 
	@Transactional
	@Override
	public boolean save(Order order,List<OrderChild> childOrders){
		
		//校验订单金额是否正确
		
		for(OrderChild co : childOrders){
			Ticket temp=tdao.findById(co.getTicketId());
			if(temp==null){
				//异常,商品不存在
				throw new BusinessException("您要订购的商品不存在！");
			}
			//生成子订单
			co.setOrderCode(OrderCodeGenerator.getChildOrderCode());
			co.setCreateTime(new Date());
			co.setGoodsCode(temp.getGoodsCode());
			co.setGoodsName(temp.getName());
			co.setPrice(temp.getPrice());
			co.setTotalPrice(temp.getPrice()*Math.abs(co.getQuantity()));//取绝对值，防止负值
			
			order.setOrderPrice(order.getOrderPrice()+co.getTotalPrice());//订单总价
			if(order.getTotal()==null)
				order.setTotal(0);
			order.setTotal((order.getTotal()+co.getQuantity()));//订单总票数
		}
		order.setOrderCode(OrderCodeGenerator.getOrderCode());
		order.setCreateTime(new Date());
		order.setStatus("0");//已下单
		order.setPayStatus("0");//待付款
		odao.save(order);
		
		//保存子订单
		for(OrderChild co : childOrders){
			co.setOrderId(order.getId());
			cdao.save(co);
		}
		
		return true;
	}

	@Transactional
	@Override
	public boolean cancelOrder(Long id) {
		Order order=this.odao.findById(id);
		if(order!=null&&order.getPayStatus()=="0"){//未付款，直接删除订单
			List<OrderChild> list=this.cdao.getAllByOid(order.getId());
			//删除子订单
			for(OrderChild c:list){
				this.cdao.delete(c.getId());
			}
			//删除订单
			this.odao.delete(order.getId());
			//记录删除日志
			
			return true;
		}else{
			throw new BusinessException("已付款订单无法取消！");
		}
	}
	
	/**
		申请退票
	 */
	@Override
	public boolean returnTicket(Long id,Integer num) {
		num=Math.abs(num);
		
		OrderChild order=this.cdao.findById(id);
		Long count=this.cancel.findCancelCount(id);//申请取消数量
		Long checkCount=this.checkDao.findCheckCount(id);//已检票数量
		
		if("0".equals(order.getPayStatus())){
			throw new BusinessException("该订单未付款！");
		}
		
		if(count==null)
			count=0L;
		
		if(num>order.getQuantity()-count-checkCount){
			throw new BusinessException("可退票数量不足！");
		}
		
		Ticket ticket=this.tdao.findById(order.getTicketId());
		//产生退票单
		CancelOrder cancel=new CancelOrder();
		cancel.setOrderId(order.getOrderId());
		cancel.setChildOrderId(order.getId());
		cancel.setNum(num);
		cancel.setCancelOrderCode(OrderCodeGenerator.getCancelOrderCode());//退单号
		cancel.setCancelDate(new Date());
		cancel.setStatus("0");
		cancel.setTotalPrice(ticket.getPrice()*num);//总价
		
		order.setStatus("1");//申请退款
		this.cdao.update(order);
		this.cancel.save(cancel);
		return true;
	}
	
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#update(com.ramostear.jbuilder.entity.Order)
	 */
	@Override
	public boolean update(Order order) {
		return this.odao.update(order);
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

	@Override
	public PageDto<Order> findByPageByUid(int offset, int size, String orderBy,
			boolean order, String uid) {
		List<Order> list = odao.findByPage((offset-1)*size, size, orderBy, order,uid);
		Long totalSize = odao.size();
		return new PageDto<Order>(totalSize,offset,size,list);
	}

	@Transactional
	@Override
	public void payOrder(Long orderId) {
		//1、付款后更新订单状态
		Order order=this.odao.findById(orderId);
		if("1".equals(order.getPayStatus())){
			throw new BusinessException("该订单已经支付！");
		}
		
		order.setPayStatus("1");//已付款
		order.setStatus("2");//已完成
		order.setZiyoubaoCheckNo("321321321321");//考虑生成规则
		this.odao.update(order);
		
		List<OrderChild> child=this.cdao.getAllByOid(orderId);
				
		for(OrderChild item : child){
			//更新子订单状态
			item.setPayStatus("1");//已经付款
			this.cdao.update(item);
		}
	}

	@Override
	public Order findByIdAndUid(Long id, Long uid) {
		return this.odao.findByIdAndUid(id, uid);
	}

	@Override
	public boolean checkOrder(Long corderId, Integer num) {
		OrderChild child=this.cdao.findById(corderId);
		if(child==null){
			throw new BusinessException("订单不存在");
		}
		if(num>child.getQuantity()){
			throw new BusinessException("检票数量超过订单数量");
		}
		
		Long count=this.checkDao.findCheckCount(corderId);
		if(count==null)
			count=0L;
		
		if(num>(child.getQuantity()-count)){
			throw new BusinessException("检票数量超过订单数量");
		}
		
		child.setStatus("4");//完成订单
		if(count==child.getQuantity()-0){
			child.setCheckStatus("2");//检票完成
		}else{
			child.setCheckStatus("1");//检票中
		}
		this.cdao.update(child);
		//更新订单检票数量
		Order order=this.odao.findById(child.getOrderId());
		order.setCheckNum(order.getCheckNum()+num);
		this.odao.update(order);
		
		return true;
	}



	

}
