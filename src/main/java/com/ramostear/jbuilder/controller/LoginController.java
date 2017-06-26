/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月6日 下午3:24:01
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramostear.jbuilder.consts.SysConsts;
import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.service.UserService;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年6月6日 下午3:24:01 
 * @email:ramostear@163.com 
 */
@Controller
@RequestMapping("/admin")
public class LoginController {

	@Autowired
	private UserService userService;
	
	/**
	 * 跳转到登录页面
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	/**
	 * 执行登录请求
	 * @param username
	 * @param password
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String username,String password,HttpSession session){
		String code = (String)session.getAttribute(SysConsts.VERIFY_CODE);
		/*if(verifyCode == null|| verifyCode.trim().equals("")||!verifyCode.equals(code)){
			return "redirect:/admin/login";
		}*/
		System.out.println(code+"======"+session.getId());
		session.removeAttribute(SysConsts.VERIFY_CODE);
		Subject currUser = SecurityUtils.getSubject();
		if(!currUser.isAuthenticated()){
			UsernamePasswordToken token = new UsernamePasswordToken(username,password);
			token.setRememberMe(true);
			try {
				currUser.login(token);
			}catch(UnknownAccountException uae){
				return "redirect:/admin/login";
			}
			catch (AuthenticationException e) {
				return "redirect:/admin/login";
			}
		}
		if(currUser.isAuthenticated()){
			User user = userService.findByName(username);
			session.setAttribute(SysConsts.LOGIN_USER, user);
			return "redirect:/admin/index";
		}
		return "redirect:/admin/login";
	}
	
	/**
	 * 退出登录请求
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute(SysConsts.LOGIN_USER);
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return "redirect:/admin/login";
	}
	
}
