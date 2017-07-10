/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月27日 上午11:00:33
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
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramostear.jbuilder.consts.SysConsts;
import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.service.UserService;

/** 
 * @Desc: (处理前端注册用户的控制类) 
 * @author: 谭朝红 
 * @date: 2017年6月27日 上午11:00:33 
 * @email:ramostear@163.com 
 */
@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 游客登录界面，不采用异步登录方式，直接进行页面跳转
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model){
		return "member/login";
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute(SysConsts.LOGIN_USER);
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return "redirect:/index";
	}
	
	/**
	 * 用户登录界面，登录成功后跳转到用户的个人中心，进行详细信息的浏览
	 * @param username
	 * @param password
	 * @param verifyCode
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String username,String password,String verifyCode,HttpSession session, Model model){
		String code = (String)session.getAttribute(SysConsts.VERIFY_CODE);
		if(verifyCode == null || verifyCode.trim().equals("") || !verifyCode.equalsIgnoreCase(code)){
			model.addAttribute("msg", "验证码不正确，请重新输入！")
			.addAttribute("username", username)
			.addAttribute("password", password)
			.addAttribute("verifyCode", verifyCode);
			return "member/login";
		}
		session.removeAttribute(SysConsts.VERIFY_CODE);
		Subject currUser = SecurityUtils.getSubject();
		if(!currUser.isAuthenticated()){
			UsernamePasswordToken token = new UsernamePasswordToken(username,password);
			token.setRememberMe(true);
			try {
				currUser.login(token);
			}catch(UnknownAccountException uae){
				model.addAttribute("msg", "<i class=\"fa  fa-bell\"></i> 用户名或密码不正确！")
				.addAttribute("username", username)
				.addAttribute("password", password).
				addAttribute("verifyCode", verifyCode);
				return "login";
			}catch (LockedAccountException e){
				model.addAttribute("msg", "<i class=\"fa  fa-bell\"></i> 用户已被锁定，请联系管理员！")
				.addAttribute("username", username)
				.addAttribute("password", password).
				addAttribute("verifyCode", verifyCode);
				return "login";
			}
			catch (AuthenticationException e) {
				model.addAttribute("msg", "<i class=\"fa  fa-bell\"></i> 用户名或密码不正确！")
				.addAttribute("username", username)
				.addAttribute("password", password).
				addAttribute("verifyCode", verifyCode);
				return "login";
			}
		}
		if(currUser.isAuthenticated()){
			User user = userService.findByName(username);
			session.setAttribute(SysConsts.LOGIN_USER, user);
			return "redirect:/member/userinfo";
		}
		return "member/login";
	}
	
	/**
	 * 跳转到游客注册界面
	 * @return
	 */
	@RequestMapping(value="/registry",method=RequestMethod.GET)
	public String registry(Model model){
		return "member/registry";
	}
	
	@RequestMapping(value="/registry",method=RequestMethod.POST)
	public String registry(User user,String verifyCode ,Model model,HttpSession session){
		String code = (String)session.getAttribute(SysConsts.VERIFY_CODE);
		if(verifyCode == null|| verifyCode.trim().equals("")||!verifyCode.equalsIgnoreCase(code)){
			model.addAttribute("msg", "验证码不正确，请核对后登录！");
			return "member/registry";
		}
		//1.先判断数据库中该用户是否已经存在，如果已经存在，则不予注册
		User u = userService.findByName(user.getUsername());
		if(u!=null){
			model.addAttribute("msg", "该用户已经被注册！")
			.addAttribute("username", user.getUsername());
			return "member/registry";
		}
		//2.如果用户没有被注册
		user.setType(2); 	//设置用户类型为注册用户
		user.setStatus(1);  //启用该用户
		user.setNickname(user.getUsername());
		userService.add(user);
		return "redirect:/member/login";
	}
	
}
