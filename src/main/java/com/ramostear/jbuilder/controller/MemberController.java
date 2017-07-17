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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramostear.jbuilder.consts.SysConsts;
import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.service.OrderService;
import com.ramostear.jbuilder.service.TicketService;
import com.ramostear.jbuilder.service.UserService;
import com.ramostear.jbuilder.service.impl.PasswordHelper;

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
	
	@Autowired
	private OrderService orderService;
	
	
	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private PasswordHelper passwordHelper;
	
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
		
		boolean flag = this.memberLogin(username, password);
		if(flag){
			User user = userService.findByName(username);
			session.setAttribute(SysConsts.LOGIN_USER, user);
			return "redirect:/member/index";
		}else{
			model.addAttribute("msg", "<i class=\"fa  fa-bell\"></i> 用户名或密码不正确！")
			.addAttribute("username", username)
			.addAttribute("password", password).
			addAttribute("verifyCode", verifyCode);
			return "member/login";
		}
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
	
	@RequestMapping(value="/userinfo",method=RequestMethod.GET)
	public String userinfo(HttpSession session,Model model){
		User member = (User) session.getAttribute(SysConsts.LOGIN_USER);
		model.addAttribute("member", this.userService.findById(member.getId()));
		return "member/userinfo";
	}
	
	@RequestMapping(value="/userinfo",method=RequestMethod.POST)
	public String userinfo(User user,Model model){
		User u = this.userService.findById(user.getId());
		if(u != null)
		{
			u.setEmail(user.getEmail());
			u.setNickname(user.getNickname());
			u.setPhone(user.getPhone());
			u.setQq(user.getQq());
			u.setSignature(user.getSignature());
			this.userService.updateMember(u);
		}
		return "member/userinfo";
	}
	
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(ReqDto req,HttpSession session,Model model){
		User member = (User)session.getAttribute(SysConsts.LOGIN_USER);
		model.addAttribute("member", member);
		List<Ticket> tlist=this.ticketService.findAll();
		
		Map<Long,Ticket> tlMap=new HashMap<>();
	       for(Ticket entity : tlist){
	    	   tlMap.put(entity.getId(),entity);
	       }
	    PageDto<Order> list = this.orderService.findByPageByUid(req.getPageNo(), req.getPageSize(), "id", true,member.getId(),null);
		model.addAttribute("list", list);
		model.addAttribute("size", list.getItems().size());
		model.addAttribute("tlMap",tlMap);
		return "member/index";
	}
	
	@RequestMapping(value="/safecenter",method=RequestMethod.GET)
	public String safecenter(HttpSession session,Model model)
	{
		User u = (User)session.getAttribute(SysConsts.LOGIN_USER);
		User member = this.userService.findById(u.getId());
		model.addAttribute("member",member);
		return "member/safecenter";
	}
	
	@RequestMapping(value="/changePwd",method=RequestMethod.POST)
	public String changPwd(String oldPwd,String newPwd,Long id,Model model){
		boolean flag = this.checkPwd(id, oldPwd);
		if(flag){
			User u = this.userService.findById(id);
			if(u!=null){
				u.setPassword(newPwd);
				passwordHelper.encryptPassword(u);
				this.userService.updateUser(u);
				return "redirect:/member/logout";
			}else{
				return "member/safecenter";
			}
		}else{
			model.addAttribute("msg", "*原始密码不正确!");
			return "member/safecenter";
		}
	}
	
	private boolean checkPwd(Long userId,String pwd)
	{
		boolean flag = false;
		User cu = this.userService.findById(userId);
		User u = new User(cu.getUsername(), pwd);
		u.setSalt(cu.getSalt());
		String password = passwordHelper.getPassword(u);
		if(cu.getPassword().equals(password))
		{
			flag = true;
		}
		return flag;
	}
	
	private boolean memberLogin(String username,String password){
		boolean flag = false;
		User user = this.userService.findByName(username);
		if(user != null){
			User cu = new User(username, password);
			cu.setSalt(user.getSalt());
			String pwd = passwordHelper.getPassword(cu);
			if(user.getPassword().equals(pwd)){
				flag = true;
			}
		}
		return flag;
	}
	
}
