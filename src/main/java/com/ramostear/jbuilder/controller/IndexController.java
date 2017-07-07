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
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramostear.jbuilder.entity.ScenicSpot;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.entity.TicketAttachment;
import com.ramostear.jbuilder.entity.TicketGroup;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.service.ScenicSpotService;
import com.ramostear.jbuilder.service.TicketAttachmentService;
import com.ramostear.jbuilder.service.TicketGroupService;
import com.ramostear.jbuilder.service.TicketService;
import com.ramostear.jbuilder.service.UserService;

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
	@RequestMapping(value="/spotsList",method=RequestMethod.GET)
	public String spotsList(ReqDto req,Model model){
		
		model.addAttribute("list", this.ticketService.findByPageMember(req.getPageNo(), req.getPageSize(), "id", true));
		
		return "member/spots_more";
	}

}
