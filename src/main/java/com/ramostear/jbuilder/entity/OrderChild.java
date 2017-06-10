/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午3:02:36
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
 * @date: 2017年6月10日 下午3:02:36 
 * @email:361801580@qq.com 
 */
public class OrderChild {

	private Long id;
	private Long ticketId;
	private String orderCode;
	private double price;
	private Integer quantity;
	private double totalPrice;
	private Date occDate;
	private String goodsCode;
	private String goodsName;
	private String remark;
	private String status;
	private Date createTime;
	private String retreatBatchNo;
	
	
	
	public OrderChild(Long id, Long ticketId, String orderCode, double price,
			Integer quantity, double totalPrice, Date occDate, String goodsCode,
			String goodsName, String remark, String status, Date createTime,
			String retreatBatchNo) {
		super();
		this.id = id;
		this.ticketId = ticketId;
		this.orderCode = orderCode;
		this.price = price;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.occDate = occDate;
		this.goodsCode = goodsCode;
		this.goodsName = goodsName;
		this.remark = remark;
		this.status = status;
		this.createTime = createTime;
		this.retreatBatchNo = retreatBatchNo;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getTicketId() {
		return ticketId;
	}
	public void setTicketId(Long ticketId) {
		this.ticketId = ticketId;
	}
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Date getOccDate() {
		return occDate;
	}
	public void setOccDate(Date occDate) {
		this.occDate = occDate;
	}
	public String getGoodsCode() {
		return goodsCode;
	}
	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getRetreatBatchNo() {
		return retreatBatchNo;
	}
	public void setRetreatBatchNo(String retreatBatchNo) {
		this.retreatBatchNo = retreatBatchNo;
	} 	 
	
	
	
}
