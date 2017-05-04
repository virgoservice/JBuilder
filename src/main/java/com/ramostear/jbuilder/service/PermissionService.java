/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月4日 上午9:19:00
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.List;

import com.ramostear.jbuilder.entity.Permission;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月4日 上午9:19:00 
 * @email:ramostear@163.com 
 */
public interface PermissionService {

	public Permission getPermission(Long id);
	
	public Permission getMenu();
	
	public Permission getMenuByRoles(Long...roleIds);
	
	public List<Permission> findAll();
	
	public List<Permission> findModuleByRoles(Long...roleIds);
}
