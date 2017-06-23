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
import java.util.List;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月10日 下午2:58:16 
 * @email:361801580@qq.com 
 */
public class Order {
	private Long id;
	private Long userId;
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
	private Integer ziyoubaoStatus;
	private Integer checkNum;
	private Integer returnNum;
	private Integer total;
	private Integer ziyoubaoSend;
	private String ziyoubaoCheckNo;
	
	private List<OrderChild> list;


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Long getUserId() {
		return userId;
	}


	public void setUserId(Long userId) {
		this.userId = userId;
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


	public Integer getZiyoubaoStatus() {
		return ziyoubaoStatus;
	}


	public void setZiyoubaoStatus(Integer ziyoubaoStatus) {
		this.ziyoubaoStatus = ziyoubaoStatus;
	}


	public Integer getCheckNum() {
		return checkNum;
	}


	public void setCheckNum(Integer checkNum) {
		this.checkNum = checkNum;
	}


	public Integer getReturnNum() {
		return returnNum;
	}


	public void setReturnNum(Integer returnNum) {
		this.returnNum = returnNum;
	}


	public Integer getTotal() {
		return total;
	}


	public void setTotal(Integer total) {
		this.total = total;
	}


	public Integer getZiyoubaoSend() {
		return ziyoubaoSend;
	}


	public void setZiyoubaoSend(Integer ziyoubaoSend) {
		this.ziyoubaoSend = ziyoubaoSend;
	}


	public String getZiyoubaoCheckNo() {
		return ziyoubaoCheckNo;
	}


	public void setZiyoubaoCheckNo(String ziyoubaoCheckNo) {
		this.ziyoubaoCheckNo = ziyoubaoCheckNo;
	}


	public List<OrderChild> getList() {
		return list;
	}


	public void setList(List<OrderChild> list) {
		this.list = list;
	}


	public Order(Long id, Long userId, String certificateNo, String linkName,
			String linkMobile, String orderCode, double orderPrice,
			String payMethod, String payStatus, String status, Date createTime,
			String retreatBatchNo, Integer ziyoubaoStatus, Integer checkNum,
			Integer returnNum, Integer total, Integer ziyoubaoSend,
			String ziyoubaoCheckNo, List<OrderChild> list) {
		super();
		this.id = id;
		this.userId = userId;
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
		this.ziyoubaoStatus = ziyoubaoStatus;
		this.checkNum = checkNum;
		this.returnNum = returnNum;
		this.total = total;
		this.ziyoubaoSend = ziyoubaoSend;
		this.ziyoubaoCheckNo = ziyoubaoCheckNo;
		this.list = list;
	}


	public Order() {
		super();
	}

	
	
	

	
	
	
}
