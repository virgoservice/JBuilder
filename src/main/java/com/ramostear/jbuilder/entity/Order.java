/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午2:58:16
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
 * @date: 2017年6月10日 下午2:58:16 
 * @email:361801580@qq.com 
 */
public class Order {
	private Long id;
	private String certificateNo;
	private String linkName;
	private String linkMobile;
	private String orderCode;
	private double orderPrice;
	private String payMethod;
	private String payStatus;
	private String status;
	private Date createTime;
	private String retreatBatchNo;
	
	
	public Order() {
		super();
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getCertificateNo() {
		return certificateNo;
	}


	public void setCertificateNo(String certificateNo) {
		this.certificateNo = certificateNo;
	}


	public String getLinkName() {
		return linkName;
	}


	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}


	public String getLinkMobile() {
		return linkMobile;
	}


	public void setLinkMobile(String linkMobile) {
		this.linkMobile = linkMobile;
	}


	public String getOrderCode() {
		return orderCode;
	}


	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}


	public double getOrderPrice() {
		return orderPrice;
	}


	public void setOrderPrice(double orderPrice) {
		this.orderPrice = orderPrice;
	}


	public String getPayMethod() {
		return payMethod;
	}


	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}


	public String getPayStatus() {
		return payStatus;
	}


	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
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


	public Order(Long id, String certificateNo, String linkName,
			String linkMobile, String orderCode, double orderPrice,
			String payMethod, String payStatus, String status, Date createTime,
			String retreatBatchNo) {
		super();
		this.id = id;
		this.certificateNo = certificateNo;
		this.linkName = linkName;
		this.linkMobile = linkMobile;
		this.orderCode = orderCode;
		this.orderPrice = orderPrice;
		this.payMethod = payMethod;
		this.payStatus = payStatus;
		this.status = status;
		this.createTime = createTime;
		this.retreatBatchNo = retreatBatchNo;
	}
	
	
}
