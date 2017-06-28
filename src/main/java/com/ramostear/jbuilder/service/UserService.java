/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午4:11:59
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.kit.PageDto;


/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月2日 下午4:11:59 
 * @email:ramostear@163.com 
 */
public interface UserService {

	/**
	 * 保存管理员
	 * @param manager
	 * @param roleIds
	 * @return
	 */
	public User add(User user,Long...roleIds);
	/**
	 * 添加前台的用户
	 * @param user
	 * @return
	 */
	public User add(User user);
	
	/**
	 * 修改密码
	 * @param managerId
	 * @param newPassword
	 */
	public void changePassword(Long userId,String newPassword);
	
	public User findById(Long id);
	
	/**
	 * 建立管理员和角色之间的关系
	 * @param managerId
	 * @param roleIds
	 */
	public void correlationRoles(Long userId,Long...roleIds);
	/**
	 * 解除管理员和角色之间的关系
	 * @param managerId
	 * @param roleIds
	 */
	public void uncorrelationRoles(Long userId,Long...roleIds);
	/**
	 * 解除管理员所有的角色
	 * @param managerId
	 */
	public void uncorrelationAllRoles(Long userId);
	/**
	 * 根据管理员登录名查询管理员具有的角色，这个方法使用在shiro授权的时候
	 * @param managerName
	 * @return
	 */
	public List<String> findRoles(String username);
	/**
	 * 根据管理员名字查询管理员具有的权限，这个方法使用在shiro授权的时候
	 * @param managerName
	 * @return
	 */
	public List<String> findPermissions(String username);
	
	/**
	 * 更新管理员
	 * @param manager
	 * @param roleIds
	 * @return
	 */
	public User updateUser(User user);
	
	public User update(User user,Long...roleIds);
	
	public User findByName(String username);
	
	/**
	 * 删除管理员
	 * @param managerId
	 */
	public void del(Long userId);
	/**
	 * 批量删除管理员
	 * @param managerIds
	 */
	public void delBatch(Long...userIds);
	/**
	 * 查询角色的ID集合
	 * @param managerId
	 * @return
	 */
	public List<Long> findRoleIdsById(Long userId);
	
	
	/**
	 * 查询管理员编号为id的管理员所创建的子管理员的数量
	 * @param id
	 * @return
	 */
	public int findTotalCount();
	
	/**
	 * 分页查询编号为id的管理员所创建的子管理员
	 * @param id			管理员编号
	 * @param offset		起始页
	 * @param size			查询条数
	 * @param orderBy		排序字段
	 * @param order 		排序方式 true:desc,false:asc
	 * @return
	 */
	public PageDto<User> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("oderBy")String orderBy,@Param("order") boolean order);
	
}
