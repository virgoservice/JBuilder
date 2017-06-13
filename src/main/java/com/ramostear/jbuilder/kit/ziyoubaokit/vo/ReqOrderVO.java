/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午5:12:52
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit.ziyoubaokit.vo;

import java.util.List;

/** 
 * @Desc: (下单回复vo) 
 * @author: 赖生龙 
 * @date: 2017年6月10日 下午5:12:52 
 * @email:361801580@qq.com 
 */
public class ReqOrderVO {
	private Integer code;
	private String description;
	private String certificateNo;
	private String linkName;
	private String linkMobile;
	private String orderCode;//ziyoubao订单
	private double orderPrice;
	private String payMethod;
	private String assistCheckNo;//辅助码
	private List<TicketVO> ticketOrders;
	
	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
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


	public String getAssistCheckNo() {
		return assistCheckNo;
	}


	public void setAssistCheckNo(String assistCheckNo) {
		this.assistCheckNo = assistCheckNo;
	}


	public ReqOrderVO() {
		super();
	}

	public List<TicketVO> getTicketOrders() {
		return ticketOrders;
	}

	public void setTicketOrders(List<TicketVO> ticketOrders) {
		this.ticketOrders = ticketOrders;
	}

	@Override
	public String toString() {
		return "ReqOrderVo [code=" + code + ", description=" + description
				+ ", certificateNo=" + certificateNo + ", linkName=" + linkName
				+ ", linkMobile=" + linkMobile + ", orderCode=" + orderCode
				+ ", orderPrice=" + orderPrice + ", payMethod=" + payMethod
				+ ", assistCheckNo=" + assistCheckNo + ", ticketOrders="
				+ ticketOrders + "]";
	}


	
	
	
}
