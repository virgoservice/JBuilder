/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 上午9:14:48
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramostear.jbuilder.entity.Friendlink;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.service.FriendlinkService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月5日 上午9:14:48 
 * @email:361801580@qq.com 
 */
@Controller
@RequestMapping("/admin/link")
public class FriendlinkController {
	
	@Autowired
	private FriendlinkService friendlinkService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(){
		return "friendlink/index";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Friendlink link,ReqDto req,Model model){
		model.addAttribute("list", friendlinkService.findByPage(req.getPageNo(), req.getPageSize(), "createTime", true));
		
		return "friendlink/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Friendlink link){
		link.setCreateTime(new Date());;
		friendlinkService.add(link);
		return "friendlink/index";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String eidt(Friendlink link){
		friendlinkService.update(link);
		return "friendlink/index";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(Long id){
		friendlinkService.delete(id);
		return "friendlink/index";
	}
	
}
