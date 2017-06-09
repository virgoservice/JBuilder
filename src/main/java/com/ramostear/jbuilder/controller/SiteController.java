package com.ramostear.jbuilder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ramostear.jbuilder.entity.Site;
import com.ramostear.jbuilder.service.SiteService;

/** 
 * @Desc: () 
 * @author: 张瑞
 * @date: 2017年5月5日 下午15:23:03 
 * @email: nishbc@163.com
 */
@Controller
@RequestMapping("/admin/site")
public class SiteController {

	@Autowired
	private SiteService siteService;
	
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String index(Model model){
		Site siteInfo = this.siteService.findById(1L);
		if(siteInfo == null){
			siteInfo = new Site();
		}
		model.addAttribute("siteInfo", siteInfo);
		return "site/index";
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public String edit(Site siteInfo ,Model model){
		if(siteInfo.getId()==null||siteInfo.getId()<0){
			//TODO 抛出自定义异常
			return "failure";
		}
		siteService.update(siteInfo);
		return "success";
	}
	
}
