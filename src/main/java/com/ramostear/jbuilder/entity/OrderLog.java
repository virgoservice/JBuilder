/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月16日 上午10:16:19
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月16日 上午10:16:19 
 * @email:361801580@qq.com 
 */
public class OrderLog {

	private Long id;
	private String type;
	private String detail;
	private String detail1;
	private String detail2;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getDetail1() {
		return detail1;
	}
	public void setDetail1(String detail1) {
		this.detail1 = detail1;
	}
	public String getDetail2() {
		return detail2;
	}
	public void setDetail2(String detail2) {
		this.detail2 = detail2;
	}
	public OrderLog(Long id, String type, String detail, String detail1,
			String detail2) {
		super();
		this.id = id;
		this.type = type;
		this.detail = detail;
		this.detail1 = detail1;
		this.detail2 = detail2;
	}
	public OrderLog() {
		super();
	}
	
	@Override
	public String toString() {
		return "OrderLog [id=" + id + ", type=" + type + ", detail=" + detail
				+ ", detail1=" + detail1 + ", detail2=" + detail2 + "]";
	}
}
