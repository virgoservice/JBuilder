/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月4日 下午2:16:04
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramostear.jbuilder.consts.SysConsts;
import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.service.RoleService;
import com.ramostear.jbuilder.service.UserService;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月4日 下午2:16:04 
 * @email:ramostear@163.com 
 */
@Controller
@RequestMapping("/admin")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value="/user/index",method=RequestMethod.GET)
	public String index(){
		return "user/index";
	}
	
	@RequestMapping(value="/user/list",method=RequestMethod.GET)
	public String list(User user,ReqDto req,Model model){
		model.addAttribute("list", userService.findByPage(req.getPageNo(), req.getPageSize(), "createTime", true));
		return "user/list";
	}
	
	@RequestMapping(value="/user/add",method=RequestMethod.GET)
	public String add(Model model){
		model.addAttribute("roles", roleService.findAll());
		return "user/add";
	}
	
	@RequestMapping(value="/user/add",method=RequestMethod.POST)
	public String add(User user,Model model,Long...roleIds){
		user.setStatus(1);	//默认启用
		user.setType(1);	//0：来宾用户；1：管理员；2：注册用户
		userService.add(user, roleIds);
		return "user/index";
	}
	
	@RequestMapping(value="/user/edit",method=RequestMethod.GET)
	public String edit(Model model,Long id){
		model.addAttribute("roles", roleService.findAll())
			 .addAttribute("userRole", userService.findRoleIdsById(id))
			 .addAttribute("user", userService.findById(id));
		return "user/edit";
	}
	
	@RequestMapping(value="/user/edit",method=RequestMethod.POST)
	public String edit(User user,Model model,Long...roleIds){
		userService.update(user, roleIds);
		return "user/index";
	}
	
	@RequestMapping(value="/user/delete",method=RequestMethod.POST)
	public String delete(Long id){
		User user = userService.findById(id);
		if(user!=null){
			userService.del(user.getId());
		}
		return "user/index";
	}
	
	@RequestMapping(value="/user/deleteBatch",method=RequestMethod.POST)
	public String deleteBatch(Long...userIds){
		userService.delBatch(userIds);
		return "user/index";
	}
	
	@RequestMapping(value="/user/profile",method=RequestMethod.GET)
	public String profile(HttpSession session,Model model){
		User u = (User)session.getAttribute(SysConsts.LOGIN_USER);
		User user = userService.findById(u.getId());
		if(user!=null){
			model.addAttribute("user", user);
		}else{
			model.addAttribute("user", new User());
		}
		return "user/profile";
	}
	
	@RequestMapping(value="/user/profile",method=RequestMethod.POST)
	public String profile(User user,Model model){
		this.userService.updateUser(user);
		return "user/profile";
	}
	
	@RequestMapping(value="/user/changeStatus",method=RequestMethod.POST)
	public String changeStatus(Long id){
		User u = userService.findById(id);
		User user = new User();
		user.setId(u.getId());
		if(u.getStatus()==0){
			user.setStatus(1);
		}
		if(u.getStatus()==1){
			user.setStatus(0);
		}
		userService.updateUser(user);
		return "user/index";
	}
	
	/**
	 * 游客管理模块
	 */
	@RequestMapping(value="/member/index")
	public String memberindex(){
		
		return "user/member/index";
	}
	
	@RequestMapping(value="/member/list",method=RequestMethod.GET)
	public String memberlist(User user,ReqDto req,Model model){
		model.addAttribute("list", userService.findMemberByPage(req.getPageNo(), req.getPageSize(), "createTime", true));
		return "user/member/list";
	} 
}
