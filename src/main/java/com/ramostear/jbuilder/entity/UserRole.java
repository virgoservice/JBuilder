/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午4:59:51
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月2日 下午4:59:51 
 * @email:ramostear@163.com 
 */
public class UserRole {

	private Long id;
	
	private Long uId;
	
	private Long roleId;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getuId() {
		return uId;
	}

	public void setuId(Long uId) {
		this.uId = uId;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	/**
	 * @param id
	 * @param uId
	 * @param roleId
	 */
	public UserRole(Long id, Long uId, Long roleId) {
		super();
		this.id = id;
		this.uId = uId;
		this.roleId = roleId;
	}
	
	public UserRole(){}
	
	public UserRole(Long uId,Long roleId){
		this.uId = uId;
		this.roleId = roleId;
	}
}
