/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年3月21日 下午7:40:13
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit;

import java.io.Serializable;


/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年3月21日 下午7:40:13 
 * @email:ramostear@163.com 
 */
public class ReqDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer pageNo;
	private Integer pageSize;
	public ReqDto() {
		super();
	}
	public ReqDto(Integer pageNo,Integer pageSize){
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
	}
	
	public Integer getPageNo(){
		return pageNo == null ? 1 : pageNo;
	}
	
	public void setPageNo(Integer pageNo){
		this.pageNo = pageNo;
	}
	
	public Integer getPageSize(){
		return pageSize == null ? 10 : pageSize;
	}
	
	public void setPageSize(Integer pageSize){
		this.pageSize = pageSize;
	}

	@Override
	public String toString() {
		return "ReqDto [pageNo=" + pageNo + ", pageSize=" + pageSize + "]";
	}
}
