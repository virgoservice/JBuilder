/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月3日 上午9:22:13
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

import java.util.List;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月3日 上午9:22:13 
 * @email:ramostear@163.com 
 */
public class Permission {
	
	private Long id;
	
	private String name;
	
	private Long parentId;
	
	private String parentName;
	
	private String permission;
	
	private String icon;
	
	private String uri;
	
	private List<Permission> children;
	
	public Permission(){}

	/**
	 * @param id
	 * @param name
	 * @param parentId
	 * @param parentName
	 * @param permission
	 * @param icon
	 * @param url
	 */
	public Permission(Long id, String name, Long parentId, String parentName,
			String permission, String icon, String uri) {
		super();
		this.id = id;
		this.name = name;
		this.parentId = parentId;
		this.parentName = parentName;
		this.permission = permission;
		this.icon = icon;
		this.uri = uri;
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

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public List<Permission> getChildren() {
		return children;
	}

	public void setChildren(List<Permission> children) {
		this.children = children;
	}
	
}
