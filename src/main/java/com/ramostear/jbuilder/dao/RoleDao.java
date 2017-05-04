/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月3日 上午1:29:33
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Role;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月3日 上午1:29:33 
 * @email:ramostear@163.com 
 */
public interface RoleDao {
	
	public void save(Role role);
	
	public void update(Role role);
	
	public void delete(@Param("id")Long id);
	
	public Role findById(@Param("id")Long id);
	
	public List<Role> findAll();
	
	public List<Role> findByPage(@Param("begin")int begin,@Param("pageSize")int pageSize,@Param("orderBy")String orderBy,@Param("order")boolean order);
	
	public Long size();
	
	public void deleteBatch(@Param("roleIds")Long...roleIds);
	
	public void uncorrelationRoleUserOne(@Param("roleId")Long roleId);
	
	public void uncorrelationRoleUserMany(@Param("roleIds")Long...roleIds);
	
	public void uncorrelationRolePermissionOne(@Param("roleId")Long roleId);
	
	public void uncorrelationRolePermissionMany(@Param("roleIds")Long...roleIds);
	
	public void correlationRolePermission(@Param("roleId")Long roleId,@Param("permissionIds")Long...permissionIds);
	
	public List<Long> findPermission(@Param("roleId")Long roleId);
}
