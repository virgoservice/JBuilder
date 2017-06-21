/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月20日 下午4:42:07
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit.alipay.vo;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月20日 下午4:42:07 
 * @email:361801580@qq.com 
 */
public class AlipayTradePageVO {

	private String out_trade_no;//订单号
	private String product_code;//销售产品码
	private Double total_amount;//总金额
	private String subject;//订单标题
	private String body;//订单描述
	
	public AlipayTradePageVO() {
		super();
	}
	public String getOut_trade_no() {
		return out_trade_no;
	}
	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public Double getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(Double total_amount) {
		this.total_amount = total_amount;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	
	
}
