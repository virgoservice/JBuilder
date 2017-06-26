/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月28日 下午12:13:21
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONArray;
import com.ramostear.jbuilder.entity.Permission;
import com.ramostear.jbuilder.entity.Role;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.kit.ZTreeDto;
import com.ramostear.jbuilder.service.PermissionService;
import com.ramostear.jbuilder.service.RoleService;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月28日 下午12:13:21 
 * @email:ramostear@163.com 
 */
@Controller
@RequestMapping("/admin/role")
public class RoleController {

	@Autowired
	private RoleService roleService;
	@Autowired
	private PermissionService permissionService;
	
	@RequiresPermissions(value="role:index")
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(){
		return "role/index";
	}
	@RequiresPermissions(value="role:list")
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(ReqDto req, Model model){
		model.addAttribute("list", roleService.findByPageDto(req.getPageNo(), req.getPageSize(), "createTime", true));
		return "role/list";
	}
	@RequiresPermissions(value="role:add")
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model){
		return "role/add";
	}
	@RequiresPermissions(value="role:add")
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Role role,Model model ,Long...permissionIds){
		role.setCreateTime(new Date());
		roleService.add(role, permissionIds);
		return "redirect:/admin/role/index";
	}
	
	@RequiresPermissions(value="role:edit")
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String edit(Long id,Model model){
		model.addAttribute("role", roleService.findById(id));
		return "role/edit";
	}
	@RequiresPermissions(value="role:edit")
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(Role role,Long...permissionIds){
		roleService.update(role, permissionIds);
		return "redirect:/admin/role/index";
	}
	@RequiresPermissions(value="role:delete")
	@RequestMapping(value="/del",method=RequestMethod.POST)
	public void del(Long id,Model model){
		roleService.delete(id);
	}
	@RequiresPermissions(value="role:delete")
	@RequestMapping(value="/deleteBatch",method=RequestMethod.POST)
	public String deleteBatch(Long...roleIds){
		roleService.delBatch(roleIds);
		return "role/index";
	}
	/**
	 * 获取所有的权限
	 * @param response
	 */
	@RequiresPermissions(value={"role:add","role:edit"})
	@RequestMapping(value="/allPerms",method=RequestMethod.GET)
	public void allPerms(HttpServletResponse response){
		List<Permission> plist = permissionService.findAll();
		List<ZTreeDto> treeNodes = new ArrayList<ZTreeDto>();
		for(Permission p:plist){
			ZTreeDto node = new ZTreeDto(p.getId(), p.getName(), p.getParentId());
			treeNodes.add(node);
		}
		try {
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print(JSONArray.toJSON(treeNodes));
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequiresPermissions(value="role:edit")
	@RequestMapping(value="/checkedPerms",method=RequestMethod.GET)
	public void checkedPerms(Long id,HttpServletResponse response){
		List<Permission> allList = permissionService.findAll();
		List<Long> clist = roleService.findPermissions(id);
		List<Long> plist = new ArrayList<Long>();
		List<ZTreeDto> nodes = new ArrayList<ZTreeDto>();
		for(Long p:clist){
			plist.add(p);
		}
		for(Permission p:allList){
			ZTreeDto node = new ZTreeDto(p.getId(), p.getName(), p.getParentId());
			if(plist.contains(p.getId())){
				node.setChecked(true);
			}
			nodes.add(node);
		}
		try {
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print(JSONArray.toJSON(nodes));
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
