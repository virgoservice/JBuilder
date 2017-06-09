/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月9日 上午10:03:18
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
 * @date: 2017年5月9日 上午10:03:18 
 * @email:361801580@qq.com 
 */
public class Category {

	private Long id;
	private String name;
	private Long parentId;
	private String parentName;
	private String keyword;
	private String description;
	private Date createTime;
	private String type;
	private Integer showOrder;
	private List<Category> children;
	
	public Category(){}

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

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getShowOrder() {
		return showOrder;
	}

	public void setShowOrder(Integer showOrder) {
		this.showOrder = showOrder;
	}

	public List<Category> getChildren() {
		return children;
	}

	public void setChildren(List<Category> children) {
		this.children = children;
	}

	public Category(Long id, String name, Long parentId, String parentName,
			String keyword, String description, Date createTime, String type,
			Integer showOrder, List<Category> children) {
		super();
		this.id = id;
		this.name = name;
		this.parentId = parentId;
		this.parentName = parentName;
		this.keyword = keyword;
		this.description = description;
		this.createTime = createTime;
		this.type = type;
		this.showOrder = showOrder;
		this.children = children;
	}

	@Override
	public String toString() {
		return "{'id':'" + id + "', 'name':'" + name + "', 'parentId':'"
				+ parentId + "', 'parentName':'" + parentName
				+ "', 'keyword':'" + keyword + "', 'description':'"
				+ description + "', 'createTime':'" + createTime
				+ "', 'type':'" + type + "', 'showOrder':'" + showOrder
				+ "', 'children':'" + children + "'}  ";
	};
}
