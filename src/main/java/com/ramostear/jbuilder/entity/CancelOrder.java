/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月12日 下午3:17:28
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

import java.util.Date;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月12日 下午3:17:28 
 * @email:361801580@qq.com 
 */
public class CancelOrder {

	private Long id;
	private String cancelOrderCode;
	private Long orderId;
	private Long childOrderId;
	private String retreatBatchNo;
	private	Integer num;
	private String status;
	private String result;
	private Date cancelDate;
	private Date checkDate;
	private Long checkMan;
	private double totalPrice;
	private OrderChild child;
	private Order order;
	
	public CancelOrder() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCancelOrderCode() {
		return cancelOrderCode;
	}

	public void setCancelOrderCode(String cancelOrderCode) {
		this.cancelOrderCode = cancelOrderCode;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public Long getChildOrderId() {
		return childOrderId;
	}

	public void setChildOrderId(Long childOrderId) {
		this.childOrderId = childOrderId;
	}

	public String getRetreatBatchNo() {
		return retreatBatchNo;
	}

	public void setRetreatBatchNo(String retreatBatchNo) {
		this.retreatBatchNo = retreatBatchNo;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Date getCancelDate() {
		return cancelDate;
	}

	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
	}

	public Date getCheckDate() {
		return checkDate;
	}

	public void setCheckDate(Date checkDate) {
		this.checkDate = checkDate;
	}

	public Long getCheckMan() {
		return checkMan;
	}

	public void setCheckMan(Long checkMan) {
		this.checkMan = checkMan;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public OrderChild getChild() {
		return child;
	}

	public void setChild(OrderChild child) {
		this.child = child;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public CancelOrder(Long id, String cancelOrderCode, Long orderId,
			Long childOrderId, String retreatBatchNo, Integer num,
			String status, String result, Date cancelDate, Date checkDate,
			Long checkMan, double totalPrice, OrderChild child, Order order) {
		super();
		this.id = id;
		this.cancelOrderCode = cancelOrderCode;
		this.orderId = orderId;
		this.childOrderId = childOrderId;
		this.retreatBatchNo = retreatBatchNo;
		this.num = num;
		this.status = status;
		this.result = result;
		this.cancelDate = cancelDate;
		this.checkDate = checkDate;
		this.checkMan = checkMan;
		this.totalPrice = totalPrice;
		this.child = child;
		this.order = order;
	}

	

	
	
}
