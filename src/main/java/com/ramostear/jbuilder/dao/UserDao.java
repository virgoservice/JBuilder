/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午5:28:55
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.User;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月2日 下午5:28:55 
 * @email:ramostear@163.com 
 */
public interface UserDao {

	public void save(User user);
	
	public void delete(Long id);
	
	public void update(User user);
	
	public User findById(Long id);
	
	public User findByName(String username);
	
	public List<User> findAll();
	
	public Long size();
	
	public Long memberSize();
	
	public List<User> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order);
	
	public List<User> findMemberByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order);
	
	public void deleteBach(@Param("userIds")Long...userIds);
	
	public void correlationRoles(@Param("userId")Long userId,@Param("roleIds")Long...roleIds);
	
	public void uncorrelationRoles(@Param("userId")Long userId,@Param("roleIds")Long...roleIds);
	
	public void uncorelationAllRoles(Long userId);
	
	public void deleteUserRole(@Param("userId")Long userId);
	
	public void deleteUserRoleBatch(@Param("userIds")Long...userIds);
	
	public List<String> findRoles(@Param("username")String username);
	
	public List<String> findPermission(@Param("username")String username);
	
	public List<Long> findRoleIdsById(@Param("userId")Long userId);
	
}
