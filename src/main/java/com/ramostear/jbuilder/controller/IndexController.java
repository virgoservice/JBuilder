/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月27日 上午10:34:53
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import java.util.ArrayList;
import java.util.HashMap; 
import java.util.List;
import java.util.Map; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON; 
import com.ramostear.jbuilder.entity.ScenicSpot;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.entity.TicketAttachment;
import com.ramostear.jbuilder.entity.TicketGroup; 
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.ReqDto; 
import com.ramostear.jbuilder.service.ScenicSpotService;
import com.ramostear.jbuilder.service.TicketAttachmentService;
import com.ramostear.jbuilder.service.TicketGroupService;
import com.ramostear.jbuilder.service.TicketService;
import com.ramostear.jbuilder.service.UserService;
import com.ramostear.jbuilder.service.impl.BannerServiceImpl;

/**
 * @Desc: ()
 * @author: 谭朝红
 * @date: 2017年6月27日 上午10:34:53
 * @email:ramostear@163.com
 */
@Controller
public class IndexController {

	@Autowired
	private UserService userService;
	@Autowired
	private TicketService ticketService;
	@Autowired
	private TicketAttachmentService ticketAttachmentService;
	@Autowired
	private ScenicSpotService scenicSpotService;
	@Autowired
	private TicketGroupService ticketGroupService;
	@Autowired
	private BannerServiceImpl bannerService;
	
	@RequestMapping(value = { "/", "", "/index", "/index.html", "/index.htm" }, method = RequestMethod.GET)
	public String index(Model model) {
		
		List<Ticket> tlist=this.ticketService.findAll();
		List<TicketGroup> tgList = this.ticketGroupService.findAll();
		List<ScenicSpot> sclist = this.scenicSpotService.findAll();
		
		Map<Long,TicketGroup> tgMap=new HashMap<>();
        for(TicketGroup entity : tgList){
        	tgMap.put(entity.getId(),entity);
        }
        
        Map<Long,ScenicSpot> scMap=new HashMap<>();
        for(ScenicSpot entity : sclist){
        	scMap.put(entity.getId(),entity);
        }
        
        List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
        
        for(TicketGroup entity : tgList){
        	
        	Map<String,Object> showMap=new HashMap<>();
        	Map<Long,ScenicSpot> forscMap=new HashMap<>();
        	Map<Long,List<Ticket>> tempTicket=new HashMap<>();
        	
        	showMap.put("ticketGroup", entity.getId());
        	showMap.put("forscMap", forscMap);
        	showMap.put("tempTicket", tempTicket);
        	
        	//找出分组中的景区
        	for(Ticket tEntity : tlist){
        		
        		Long tempScId=tEntity.getScenicId();
        		
        		//不在当前分组
        		if(entity.getId()!=tEntity.getGroupId())
        			continue;
        		
        		//已经存在此景区
        		if(forscMap.containsKey(tempScId)){
        			
        			if(tempTicket.get(tempScId).size()<6)
        				tempTicket.get(tempScId).add(tEntity);
        			continue;
        		}
        		
        		List<Ticket> ttlist=new ArrayList<Ticket>();
        		ttlist.add(tEntity);
        		tempTicket.put(tempScId, ttlist);
        		forscMap.put(tempScId, scMap.get(tempScId));
        	}
        	if(forscMap.size()==0)
        		continue;
        	
        	list.add(showMap);
        }
        
        //轮播图
        
        model.addAttribute("banner",bannerService.findAll());
        model.addAttribute("tgMap",tgMap);
        model.addAttribute("list",list);
        
        
		return "index/index";
	}

	@RequestMapping(value = { "/detail/{ticketId}" }, method = RequestMethod.GET)
	public String detail(Model model, @PathVariable int ticketId) {

		List<TicketAttachment> imgList = ticketAttachmentService.listByPage((long) ticketId, null, null,
				TicketAttachment.USE_LIST, "showOrder", true, 0, 10);
		if (imgList == null) {
			imgList = new ArrayList<TicketAttachment>();
		}
		model.addAttribute("imgList", imgList);

		Ticket t = ticketService.findById((long)ticketId);
		if(t == null){
			t = new Ticket();
		}
		model.addAttribute("ticket", t);

		return "index/detail";
	}
	
	/**
	 * 更多景区
	 * @param req
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/spotsList/{groupId}",method=RequestMethod.GET)
	public String spotsList(ReqDto req,Model model,@PathVariable Long groupId){
		
		model.addAttribute("list", this.ticketService.findByPageMember(req.getPageNo(), req.getPageSize(), "id", true,groupId));
		
		return "member/spots_more";
	}
	
	@RequestMapping(value="/spotsSearch/{name}",method=RequestMethod.GET)
	public String spotsSearch(ReqDto req,Model model,@PathVariable String name){
		
		if(name==null)
			name="%";
		
		model.addAttribute("search",name);
		model.addAttribute("list", this.ticketService.findByPageSearch(req.getPageNo(), req.getPageSize(), "id", true, name));
		
		return "member/ticket_search";
	}
	
	/**
	 * 获取头部菜单
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getMenu",method=RequestMethod.GET,produces = "text/json;charset=UTF-8")
	public String getMenu(){
		
		List<Ticket> tlist=this.ticketService.findAll();
		List<TicketGroup> tgList = this.ticketGroupService.findAll();
		List<ScenicSpot> sclist = this.scenicSpotService.findAll();
		
		Map<Long,TicketGroup> tgMap=new HashMap<>();
        for(TicketGroup entity : tgList){
        	tgMap.put(entity.getId(),entity);
        }
        
        Map<Long,ScenicSpot> scMap=new HashMap<>();
        for(ScenicSpot entity : sclist){
        	scMap.put(entity.getId(),entity);
        }
		
        List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
        
        for(TicketGroup entity : tgList){
        	
        	Map<String,Object> showMap=new HashMap<>();
        	Map<Long,ScenicSpot> forscMap=new HashMap<>(); 
        	
        	showMap.put("ticketGroup", tgMap.get(entity.getId()));
        	showMap.put("forscMap", forscMap);
        	
        	//找出分组中的景区
        	for(Ticket tEntity : tlist){
        		
        		Long tempScId=tEntity.getScenicId();
        		
        		//不在当前分组
        		if(entity.getId()!=tEntity.getGroupId())
        			continue;
        		
        		//已经存在此景区
        		if(forscMap.containsKey(tempScId)){
        			continue;
        		}
        		 
        		forscMap.put(tempScId, scMap.get(tempScId));
        	}
        	if(forscMap.size()==0)
        		continue;
        	
        	list.add(showMap);
        }
        
        

		return JSON.toJSON(list).toString();
	}
	
	
	@ResponseBody
	@RequestMapping(value="/getSider",method=RequestMethod.GET,produces = "text/json;charset=UTF-8")
	public String getSider(){
		
		List<Ticket> tlist=this.ticketService.findTop5();
		List<ScenicSpot> sclist = this.scenicSpotService.findAll();

        Map<Long,Object> scMap=new HashMap<>();
        
        for(int i=0;i<sclist.size();i++){
        	scMap.put(sclist.get(i).getId(),sclist.get(i));
        	if(i>=4)
        		break;
        }
        Map<String,Object> ret=new HashMap();
        ret.put("tlist", tlist);
        ret.put("scMap", scMap);
        
		return JSON.toJSON(ret).toString();
	}
	
	
    

}
