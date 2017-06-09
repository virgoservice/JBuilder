/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午4:07:21
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramostear.jbuilder.consts.SysConsts;
import com.ramostear.jbuilder.entity.Permission;
import com.ramostear.jbuilder.entity.User;
import com.ramostear.jbuilder.service.PermissionService;
import com.ramostear.jbuilder.service.UserService;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月2日 下午4:07:21 
 * @email:ramostear@163.com 
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private PermissionService permissionService;
	
	/**
	 * 跳转到后台首页
	 * @return
	 */
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(HttpServletResponse response,HttpSession session){
		User user = (User)session.getAttribute(SysConsts.LOGIN_USER);
		if(user != null){
			List<Long> ridList = userService.findRoleIdsById(user.getId());
			Long[] ridArray = new Long[ridList.size()];
			for(int i=0,n=ridList.size();i<n;i++){
				ridArray[i] = ridList.get(i);
			}
			Permission menu = permissionService.getMenuByRoles(ridArray);
			session.setAttribute(SysConsts.SYS_MENU, menu);
			return "index";
		}else{
			return "redirect:/admin/login";
		}
	}
	
}
