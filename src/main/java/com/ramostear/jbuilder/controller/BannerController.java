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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ramostear.jbuilder.entity.Banner;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.service.impl.BannerServiceImpl;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月5日 上午9:14:48 
 * @email:361801580@qq.com 
 */
@Controller
@RequestMapping("/admin/banner")
public class BannerController {
	
	@Autowired
	private BannerServiceImpl bannerService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(){
		return "banner/index";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Banner banner,ReqDto req,Model model){
		model.addAttribute("list", bannerService.findByPage(req.getPageNo(), req.getPageSize(), "createTime", true));
		
		return "banner/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String toAdd(){
		return "banner/add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Banner banner){
		bannerService.add(banner);
		return "banner/index";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String eidt(Long id,Model model){
		model.addAttribute("banner",bannerService.findById(id));
		return "banner/add";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String eidt(Banner banner){
		bannerService.update(banner);
		return "banner/index";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(Long id){
		bannerService.delete(id);
		return "banner/index";
	}
	
}
