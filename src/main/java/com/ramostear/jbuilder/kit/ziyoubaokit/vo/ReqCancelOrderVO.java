/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午5:26:42
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit.ziyoubaokit.vo;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月10日 下午5:26:42 
 * @email:361801580@qq.com 
 */
public class ReqCancelOrderVO {
	private Integer code;
	private String description;
	private String retreatBatchNo; //退单情况查询编号
	
	
	public ReqCancelOrderVO() {
		super();
	}
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
	public String getRetreatBatchNo() {
		return retreatBatchNo;
	}
	public void setRetreatBatchNo(String retreatBatchNo) {
		this.retreatBatchNo = retreatBatchNo;
	}
	@Override
	public String toString() {
		return "ReqCancelOrderVO [code=" + code + ", description="
				+ description + ", retreatBatchNo=" + retreatBatchNo + "]";
	}
	
	
}
