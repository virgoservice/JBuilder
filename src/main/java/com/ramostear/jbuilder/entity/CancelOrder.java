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
	private String CancelOrderCode;
	private Long orderId;
	private Long childOrderId;
	private String retreatBatchNo;
	private	Integer num;
	private String status;
	private String result;
	private Date cancelDate;
	
	
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
		return CancelOrderCode;
	}


	public void setCancelOrderCode(String cancelOrderCode) {
		CancelOrderCode = cancelOrderCode;
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


	public CancelOrder(Long id, String cancelOrderCode, Long orderId,
			Long childOrderId, String retreatBatchNo, Integer num,
			String status, String result, Date cancelDate) {
		super();
		this.id = id;
		CancelOrderCode = cancelOrderCode;
		this.orderId = orderId;
		this.childOrderId = childOrderId;
		this.retreatBatchNo = retreatBatchNo;
		this.num = num;
		this.status = status;
		this.result = result;
		this.cancelDate = cancelDate;
	}
	
	
}
