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
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.ramostear.jbuilder.entity.Banner;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.service.impl.BannerServiceImpl;
import com.ramostear.jbuilder.util.QiniuFileUtil;

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
	

	@RequiresPermissions(value="banner")
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(){
		return "banner/index";
	}
	
	@RequiresPermissions(value="banner:list")
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Banner banner,ReqDto req,Model model,@RequestParam Map<String,String> search){
		Map param = (Map)JSONObject.parse(search.get("search"));  
		model.addAttribute("list", bannerService.findByPage(req.getPageNo(), req.getPageSize(), "id", true,param));

		return "banner/list";
	}
	
	@RequiresPermissions(value="banner:add")
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String toAdd(){
		return "banner/add";
	}
	
	@RequiresPermissions(value="banner:add")
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Banner banner,MultipartFile file){
		if(file!=null){
			String url = QiniuFileUtil.upload(file);
			banner.setImage(url);
		}
		bannerService.add(banner);
		return "banner/index";
	}
	
	@RequiresPermissions(value="banner:edit")
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String eidt(Long id,Model model){
		model.addAttribute("banner",bannerService.findById(id));
		return "banner/add";
	}
	
	@RequiresPermissions(value="banner:edit")
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String eidt(Banner banner,MultipartFile file){
		String url="";
		if(banner.getImage()==null&&!file.isEmpty()){
			url = QiniuFileUtil.upload(file);
			banner.setImage(url);
		}
		
		
		bannerService.update(banner);
		return "banner/index";
	}
	
	@RequiresPermissions(value="banner:delete")
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(Long id){
		Banner temp=this.bannerService.findById(id);
		if(temp!=null){
			QiniuFileUtil.deleteQiniuFile(temp.getImage());
			bannerService.delete(id);
		}
		
		
		return "banner/index";
	}
	
}
