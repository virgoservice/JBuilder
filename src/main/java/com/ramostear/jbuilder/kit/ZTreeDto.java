/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年3月24日 下午10:39:21
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年3月24日 下午10:39:21 
 * @email:ramostear@163.com 
 */
public class ZTreeDto {
	
	private Long id;
	private String name;
	private Long parentId;
	private Boolean checked = Boolean.FALSE;
	
	public ZTreeDto(){}
	
	public ZTreeDto(Long id,String name,Long parentId){
		this.id = id;
		this.name = name;
		this.parentId = parentId;
	}
	
	/**
	 * @param id
	 * @param name
	 * @param parentId
	 * @param checked
	 */
	public ZTreeDto(Long id, String name, Long parentId, Boolean checked) {
		super();
		this.id = id;
		this.name = name;
		this.parentId = parentId;
		this.checked = checked;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getParentId() {
		return parentId;
	}
	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}
	public Boolean getChecked() {
		return checked;
	}
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	

}
