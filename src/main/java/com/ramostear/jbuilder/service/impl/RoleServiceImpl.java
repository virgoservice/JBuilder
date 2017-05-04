/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月4日 上午9:08:50
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.RoleDao;
import com.ramostear.jbuilder.entity.Role;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.RoleService;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月4日 上午9:08:50 
 * @email:ramostear@163.com 
 */
@Service("roleService")
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleDao roleDao;

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#save(com.ramostear.jbuilder.entity.Role)
	 */
	@Override
	public void save(Role role) {
		roleDao.save(role);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#update(com.ramostear.jbuilder.entity.Role)
	 */
	@Override
	public void update(Role role) {
		roleDao.update(role);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#delete(java.lang.Long)
	 */
	@Override
	public void delete(Long id) {
		roleDao.uncorrelationRoleUserOne(id);
		roleDao.uncorrelationRolePermissionOne(id);
		roleDao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#findById(java.lang.Long)
	 */
	@Override
	public Role findById(Long id) {
		return roleDao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#findAll()
	 */
	@Override
	public List<Role> findAll() {
		return roleDao.findAll();
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#findByPageDto(int, int, java.lang.String, boolean)
	 */
	@Override
	public PageDto<Role> findByPageDto(int begin, int pageSize, String orderBy,
			boolean order) {
		Long totalSize = roleDao.size();
		List<Role> list = roleDao.findByPage((begin-1)*pageSize, pageSize, orderBy, order);
		return new PageDto<Role>(totalSize, begin, pageSize, list);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#delBatch(java.lang.Long[])
	 */
	@Override
	public void delBatch(Long... roleIds) {
		roleDao.uncorrelationRoleUserMany(roleIds);
		roleDao.uncorrelationRolePermissionMany(roleIds);
		roleDao.deleteBatch(roleIds);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#add(com.ramostear.jbuilder.entity.Role, java.lang.Long[])
	 */
	@Override
	public void add(Role role, Long... permissionIds) {
		roleDao.save(role);
		roleDao.correlationRolePermission(role.getId(), permissionIds);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#update(com.ramostear.jbuilder.entity.Role, java.lang.Long[])
	 */
	@Override
	public void update(Role role, Long... permissionIds) {
		roleDao.update(role);
		roleDao.uncorrelationRolePermissionOne(role.getId());
		roleDao.correlationRolePermission(role.getId(), permissionIds);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.RoleService#findPermissions(java.lang.Long)
	 */
	@Override
	public List<Long> findPermissions(Long roleId) {
		return roleDao.findPermission(roleId);
	}

}
