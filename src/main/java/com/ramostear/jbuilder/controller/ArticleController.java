/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月9日 下午3:38:32
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
import com.ramostear.jbuilder.entity.Article;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.service.ArticleService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月9日 下午3:38:32 
 * @email:361801580@qq.com 
 */
@Controller
@RequestMapping("/admin/article")
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("statusList",articleService.getStatusCount());
		return "article/index";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Article article,ReqDto req,Model model,String search){
		model.addAttribute("list", articleService.findByPage(req.getPageNo(), req.getPageSize(), "createTime", true,search));
		
		return "article/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model m){
		return "article/add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Article article){
		articleService.add(article);
		return "article/index";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String eidt(Model m,Long id){
		m.addAttribute("article",this.articleService.findById(id));
		return "article/add";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String eidt(Article article){
		articleService.update(article);
		return "article/index";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(Long id){
		articleService.delete(id);
		return "article/index";
	}
}
