/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月4日 上午9:05:34
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Role;
import com.ramostear.jbuilder.kit.PageDto;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月4日 上午9:05:34 
 * @email:ramostear@163.com 
 */
public interface RoleService {
	/**
	 * 添加角色实体
	 * @param role
	 */
	public void save(Role role);
	
	/**
	 * 更新实体信息
	 * @param role
	 */
	public void update(Role role);
	
	/**
	 * 删除角色信息
	 * @param id
	 */
	public void delete(@Param("id")Long id);
	
	/**
	 * 根据Id查找角色信息
	 * @param id
	 * @return
	 */
	public Role findById(@Param("id")Long id);
	
	
	public List<Role> findAll();
	
	public PageDto<Role> findByPageDto(int begin,int pageSize,String orderBy,boolean order);
	
	public void delBatch(Long...roleIds);
	
	public void add(Role role,Long...permissionIds);
	
	public void update(Role role,Long...permissionIds);
	
	public List<Long> findPermissions(Long roleId);
	

}
