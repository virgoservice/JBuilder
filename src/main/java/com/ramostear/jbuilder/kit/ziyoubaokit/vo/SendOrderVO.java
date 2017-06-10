/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午5:04:42
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit.ziyoubaokit.vo;

import java.util.List;

/** 
 * @Desc: (订单下单vo) 
 * @author: 赖生龙 
 * @date: 2017年6月10日 下午5:04:42 
 * @email:361801580@qq.com 
 */
public class SendOrderVO {

	private String certificateNo;//身份证号
	private String linkName;	//联系人
	private String linkMobile;
	private String orderCode;
	private double orderPrice;
	private String payMethod; //支付方式值spot现场支付vm备佣金，zyb智游宝支付
	private List<TicketVO> ticketList;
	
	
	public SendOrderVO() {
		super();
	}
	public SendOrderVO(String certificateNo, String linkName,
			String linkMobile, String orderCode, double orderPrice,
			String payMethod, List<TicketVO> ticketList) {
		super();
		this.certificateNo = certificateNo;
		this.linkName = linkName;
		this.linkMobile = linkMobile;
		this.orderCode = orderCode;
		this.orderPrice = orderPrice;
		this.payMethod = payMethod;
		this.ticketList = ticketList;
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
	public List<TicketVO> getTicketList() {
		return ticketList;
	}
	public void setTicketList(List<TicketVO> ticketList) {
		this.ticketList = ticketList;
	}
	
	
}
