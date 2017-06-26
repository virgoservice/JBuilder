/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月14日 下午12:00:30
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.entity.TicketGroup;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.service.TicketGroupService;
import com.ramostear.jbuilder.service.TicketService;

/**
 * @description: 对应景区产品(各景点门票)
 * @author: vabo
 * @version:
 * @Datetime:2017年6月14日
 * @Email:
 */
@Controller
@RequestMapping("/admin/ticket")
public class TicketController {

	@Autowired
	private TicketService ticketService;
	@Autowired
	private TicketGroupService ticketGroupService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "ticket/index";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ReqDto reqDto, Model model) {
		PageDto<Ticket> pageDto = null;
		int offset = reqDto.getPageNo();
		int size = reqDto.getPageSize();

		List<TicketGroup> groupList = ticketGroupService.findAll();
		pageDto = ticketService.findByPage(offset, size, "scenicId", true);
		model.addAttribute("pageDto", pageDto);
		model.addAttribute("groupList", groupList == null ? groupList : new ArrayList<TicketGroup>());
		return "ticket/list";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String listBySearch(ReqDto reqDto, Model model, @RequestParam("ticketName") String ticketName,
			@RequestParam("goodsCode") String goodsCode, @RequestParam("scenicName") String scenicName,
			@RequestParam("status") int status) {
		PageDto<Ticket> pageDto = null;
		int offset = reqDto.getPageNo();
		int size = reqDto.getPageSize();
		pageDto = ticketService.findPageByCond(offset, size, "scenicId", false, goodsCode, status, ticketName,
				scenicName);
		model.addAttribute("pageDto", pageDto);
		return "ticket/list";
	}

	@RequestMapping(value = "/group", method = RequestMethod.GET)
	public String listByGroup(ReqDto reqDto, Model model, int group) {
		PageDto<Ticket> pageDto = null;
		int offset = reqDto.getPageNo();
		int size = reqDto.getPageSize();

		pageDto = ticketService.findPageByGroup(offset, size, "scenicId", false, group);
		model.addAttribute("pageDto", pageDto);
		model.addAttribute("curGroup", group);
		return "ticket/list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Model model) {
		Ticket ticket = new Ticket();
		model.addAttribute("ticket", ticket);
		return "ticket/add";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Model model, @RequestParam("id") long id) {
		Ticket ticket = ticketService.findById(id);
		if (ticket != null) {
			ticket = new Ticket();
		}

		model.addAttribute("ticket", ticket);
		return "ticket/edit";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public String addOrEdit(Ticket ticket) {
		Result result = new Result();
		result.setSuccess(true);
		long id = ticket.getId();
		Ticket tmp = ticketService.findById(id);
		if (tmp != null) {
			ticketService.update(ticket);
		} else {
			ticketService.add(ticket);
		}

		return JSONObject.toJSONString(result);
	}

	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestParam("id") Long id) {
		Result result = new Result();
		result.setSuccess(true);
		if (id > 0L) {
			ticketService.delete(id);
		}
		return JSONObject.toJSONString(result);
	}

}
