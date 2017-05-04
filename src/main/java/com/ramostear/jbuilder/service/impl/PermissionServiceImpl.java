/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月4日 上午9:21:02
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.PermissionDao;
import com.ramostear.jbuilder.entity.Permission;
import com.ramostear.jbuilder.service.PermissionService;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月4日 上午9:21:02 
 * @email:ramostear@163.com 
 */
@Service("permisionService")
public class PermissionServiceImpl implements PermissionService{

	@Autowired
	private PermissionDao permissionDao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.PermissionService#getPermission(java.lang.Long)
	 */
	@Override
	public Permission getPermission(Long id) {
		return permissionDao.getPermission(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.PermissionService#getMenu()
	 */
	@Override
	public Permission getMenu() {
		//获取权限列表
		List<Permission> perms = permissionDao.findAll();
		Map<Long, Permission> map = new HashMap<Long, Permission>();
		Map<Long, List<Permission>> parentMap = new HashMap<Long, List<Permission>>();
		for(Permission perm:perms){
			map.put(perm.getId(), perm);
			List<Permission> list = parentMap.get(perm.getParentId());
			if(list != null){
				list.add(perm);
			}else{
				list = new LinkedList<Permission>();
				list.add(perm);
			}
			parentMap.put(perm.getParentId(), list);
		}
		return setSubNodes(map,parentMap,1L);
	}

	/**
	 * @param map
	 * @param parentMap
	 * @param l
	 * @return
	 */
	private Permission setSubNodes(Map<Long, Permission> map,
			Map<Long, List<Permission>> parentMap, Long parentId) {
		Permission parentNode = map.get(parentId);
		List<Permission> subNodes = parentMap.get(parentId);
		if(subNodes != null){
			parentNode.setChildren(subNodes);
		}
		if(subNodes != null){
			for(Permission perm:subNodes){
				setSubNodes(map, parentMap, perm.getId());
			}
		}
		return parentNode;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.PermissionService#getMenuByRoles(java.lang.Long[])
	 */
	@Override
	public Permission getMenuByRoles(Long... roleIds) {
		List<Permission> perms = permissionDao.findByRoles(roleIds);
		//2.对权限进行去重操作，先把值放入到hashSet中，然后清空list，最后再把值从hashset中放回到list中
		//因为有多个角色，角色之间可能存在相同的权限，因此需要进行去重操作
		HashSet<Permission> permHashSet = new HashSet<Permission>(perms);
		perms.clear();
		perms.addAll(permHashSet);
		Collections.sort(perms, new Comparator<Permission>() {
			@Override
			public int compare(Permission p1, Permission p2) {
				return new Long(p1.getId()-p2.getId()).intValue();
			}
		});
		Map<Long, Permission> map = new HashMap<Long, Permission>();
		Map<Long, List<Permission>> parentMap = new HashMap<Long, List<Permission>>();
		for(Permission perm:perms){
			map.put(perm.getId(), perm);
			List<Permission> list = parentMap.get(perm.getParentId());
			if(list != null){
				list.add(perm);
			}else{
				list = new LinkedList<Permission>();
				list.add(perm);
			}
			parentMap.put(perm.getParentId(), list);
		}
		return setSubNodes(map, parentMap, 1L);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.PermissionService#findAll()
	 */
	@Override
	public List<Permission> findAll() {
		return permissionDao.findAll();
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.PermissionService#findModuleByRoles(java.lang.Long[])
	 */
	@Override
	public List<Permission> findModuleByRoles(Long... roleIds) {
		return permissionDao.findByRoles(roleIds);
	}

}
