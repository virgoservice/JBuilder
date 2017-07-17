/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午4:13:40
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.UserDao;
import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.UserService;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月2日 下午4:13:40 
 * @email:ramostear@163.com 
 */
@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

	@Autowired
	private PasswordHelper passwordHelper;
	
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#add(com.ramostear.jbuilder.entity.User, java.lang.Integer[])
	 */
	@Override
	public User add(User user, Long... roleIds) {
		passwordHelper.encryptPassword(user);
		user.setCreateTime(new Date());
		userDao.save(user);
		userDao.correlationRoles(user.getId(), roleIds);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#changePassword(int, java.lang.String)
	 */
	@Override
	public void changePassword(Long userId, String newPassword) {
		User user = userDao.findById(userId);
		if(user != null){
			user.setPassword(newPassword);
			passwordHelper.encryptPassword(user);
			userDao.update(user);
		}
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#correlationRoles(int, java.lang.Integer[])
	 */
	@Override
	public void correlationRoles(Long userId, Long... roleIds) {
		userDao.correlationRoles(userId, roleIds);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#uncorrelationRoles(int, java.lang.Integer[])
	 */
	@Override
	public void uncorrelationRoles(Long userId, Long... roleIds) {
		userDao.uncorrelationRoles(userId, roleIds);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#uncorrelationAllRoles(java.lang.Long)
	 */
	@Override
	public void uncorrelationAllRoles(Long userId) {
		userDao.uncorelationAllRoles(userId);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#findRoles(java.lang.String)
	 */
	@Override
	public List<String> findRoles(String username) {
		return userDao.findRoles(username);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#findPermissions(java.lang.String)
	 */
	@Override
	public List<String> findPermissions(String username) {
		return userDao.findPermission(username);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#update(com.ramostear.jbuilder.entity.User, java.lang.Integer[])
	 */
	@Override
	public User update(User user, Long... roleIds) {
		User u = userDao.findById(user.getId());
		if(u!=null){
			if(user.getPassword() != null && !"".equals(user.getPassword())){
				u.setPassword(user.getPassword());
				passwordHelper.encryptPassword(u);
			}
			if(user.getNickname() != null && !"".equals(user.getNickname())){
				u.setNickname(user.getNickname());
			}
			if(user.getSignature() != null && !"".equals(user.getSignature())){
				u.setSignature(user.getSignature());
			}
			if(user.getAvatar() != null && !"".equals(user.getAvatar())){
				u.setAvatar(user.getAvatar());
			}
			if(user.getEmail() != null && !"".equals(user.getEmail())){
				u.setEmail(user.getEmail());
			}
			u.setStatus(user.getStatus());
			userDao.update(u);
			userDao.uncorelationAllRoles(u.getId());
			userDao.correlationRoles(u.getId(), roleIds);
			return u;
		}else{
			return null;
		}
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#del(java.lang.Long)
	 */
	@Override
	public void del(Long userId) {
		userDao.deleteUserRole(userId);
		userDao.delete(userId);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#delBatch(java.lang.Long[])
	 */
	@Override
	public void delBatch(Long... userIds) {
		userDao.deleteUserRoleBatch(userIds);
		userDao.deleteBach(userIds);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#findRoleIdsById(java.lang.Long)
	 */
	@Override
	public List<Long> findRoleIdsById(Long userId) {
		return userDao.findRoleIdsById(userId);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#findTotalCount()
	 */
	@Override
	public int findTotalCount() {
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#findByPage(int, int, java.lang.String, boolean)
	 */
	@Override
	public PageDto<User> findByPage(int offset, int size, String orderBy,
			boolean order) {
		List<User> list = userDao.findByPage((offset-1)*size, size, orderBy, order);
		Long totalSize = userDao.size();
		return new PageDto<User>(totalSize,offset,size,list);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#findByName(java.lang.String)
	 */
	@Override
	public User findByName(String username) {
		return userDao.findByName(username);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#findById(java.lang.Long)
	 */
	@Override
	public User findById(Long id) {
		return userDao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#updateUser(com.ramostear.jbuilder.entity.User)
	 */
	@Override
	public User updateUser(User user) {
		if(user.getPassword()!=null || !"".equals(user.getPassword())){
			passwordHelper.encryptPassword(user);
		}
		userDao.update(user);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#add(com.ramostear.jbuilder.entity.User)
	 */
	@Override
	public User add(User user) {
		passwordHelper.encryptPassword(user);
		user.setCreateTime(new Date());
		userDao.save(user);
		return user;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#findMemberByPage(int, int, java.lang.String, boolean)
	 */
	@Override
	public PageDto<User> findMemberByPage(int offset, int size, String orderBy,
			boolean order) {
		List<User> list = userDao.findMemberByPage((offset-1)*size, size, orderBy, order);
		Long totalSize = userDao.memberSize();
		return new PageDto<User>(totalSize,offset,size,list);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.UserService#updateMember(com.ramostear.jbuilder.entity.User)
	 */
	@Override
	public User updateMember(User user) {
		this.userDao.updateMember(user);
		return user;
	}

}
