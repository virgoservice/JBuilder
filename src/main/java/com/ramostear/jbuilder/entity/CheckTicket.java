/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月22日 上午11:57:48
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
 * @date: 2017年6月22日 上午11:57:48 
 * @email:361801580@qq.com 
 */
public class CheckTicket {

	private Long id;
	private Long orderCID;
	private Long orderID;
	private Date checkTime;
	private Integer checkNum;
	private Long checkUserID;
	private String goodName;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getOrderCID() {
		return orderCID;
	}
	public void setOrderCID(Long orderCID) {
		this.orderCID = orderCID;
	}
	public Long getOrderID() {
		return orderID;
	}
	public void setOrderID(Long orderID) {
		this.orderID = orderID;
	}
	public Date getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}
	public Integer getCheckNum() {
		return checkNum;
	}
	public void setCheckNum(Integer checkNum) {
		this.checkNum = checkNum;
	}
	public Long getCheckUserID() {
		return checkUserID;
	}
	public void setCheckUserID(Long checkUserID) {
		this.checkUserID = checkUserID;
	}
	public String getGoodName() {
		return goodName;
	}
	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}
	public CheckTicket(Long id, Long orderCID, Long orderID, Date checkTime,
			Integer checkNum, Long checkUserID, String goodName) {
		super();
		this.id = id;
		this.orderCID = orderCID;
		this.orderID = orderID;
		this.checkTime = checkTime;
		this.checkNum = checkNum;
		this.checkUserID = checkUserID;
		this.goodName = goodName;
	}
	public CheckTicket() {
		super();
	}
	@Override
	public String toString() {
		return "CheckTicket [id=" + id + ", orderCID=" + orderCID
				+ ", orderID=" + orderID + ", checkTime=" + checkTime
				+ ", checkNum=" + checkNum + ", checkUserID=" + checkUserID
				+ ", goodName=" + goodName + "]";
	}
	
	
}
