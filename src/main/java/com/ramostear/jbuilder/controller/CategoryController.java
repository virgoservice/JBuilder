package com.ramostear.jbuilder.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.ramostear.jbuilder.entity.Category;
import com.ramostear.jbuilder.entity.Friendlink;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.service.CategoryService;
import com.ramostear.jbuilder.service.FriendlinkService;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月9日 上午10:18:38 
* @email:361801580@qq.com
 */
@Controller
@RequestMapping("/admin/category")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@ResponseBody
	@RequestMapping(value="/getCategory",method=RequestMethod.GET,produces = "text/json;charset=UTF-8")
	public String getCategory(Model model){
		return categoryService.findParentByTree();
	}
	
	@ResponseBody
	@RequestMapping(value="/getParent",method=RequestMethod.GET,produces = "text/json;charset=UTF-8")
	public String getParent(){
		return JSON.toJSON(categoryService.findParent()).toString();
	}
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(Model model){
		return "category/index";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Category link,ReqDto req,Model model,String search){
		model.addAttribute("list", categoryService.findByPage(req.getPageNo(), req.getPageSize(), "createTime", true,search));
		
		return "category/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Category category){
		category.setCreateTime(new Date());
		categoryService.add(category);
		return "category/index";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String eidt(Category category){
		categoryService.update(category);
		return "category/index";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(Long id){
		categoryService.delete(id);
		return "category/index";
	}
}
