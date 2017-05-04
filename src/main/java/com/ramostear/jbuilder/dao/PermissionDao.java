/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月3日 上午9:28:09
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Permission;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月3日 上午9:28:09 
 * @email:ramostear@163.com 
 */
public interface PermissionDao {

	
	public Permission getPermission(@Param("id")Long id);
	
	public List<Permission> findAll();
	
	public List<Permission> findByRoles(@Param("roleIds")Long...roleIds);
}
