/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午4:09:13
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

import java.util.Date;


/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月2日 下午4:09:13 
 * @email:ramostear@163.com 
 */
public class User {
	private Long id;
	
	private String username;
	
	private String nickname;
	
	private String password;
	
	private String salt;
	
	private Date createTime;
	
	private Integer status;//1启用、0锁定
	
	private String avatar;//头像
	
	private String signature;//个性说明
	
	private String email;
	
	public User(){}
	
	public User(String username,String password){
		this.username = username;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCredentialsSalt(){
		return username+salt;
	}
}
