/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月14日 下午4:58:21
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.ramostear.jbuilder.entity.TicketGroup;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.service.TicketGroupService;

/**
 * @description:
 * @author: vabo
 * @version:
 * @Datetime:2017年6月14日
 * @Email:
 */
@Controller
@RequestMapping("/admin/ticketGroup")
public class TicketGroupController {

	@Autowired
	private TicketGroupService ticketGroupService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(ReqDto reqDto, Model model) {
		int offset = reqDto.getPageNo();
		int size = reqDto.getPageSize();

		PageDto<TicketGroup> pageDto = ticketGroupService.findByPage(offset, size, "id", true, "");
		model.addAttribute("pageDto", pageDto);
		return "ticketGroup/index";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ReqDto reqDto, Model model) {
		int offset = reqDto.getPageNo();
		int size = reqDto.getPageSize();
		
		PageDto<TicketGroup> pageDto = ticketGroupService.findByPage(offset, size, "id", true, "");
		model.addAttribute("pageDto", pageDto);
		return "ticketGroup/list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addOrEdit(TicketGroup ticketGroup) {
		long id = ticketGroup.getId();
		String name = ticketGroup.getName();
		String description = ticketGroup.getDescription();
		if (name == null || name.trim().length() == 0) {
			return "ticketGroup/add";
		}

		TicketGroup tmp = null;
		tmp = ticketGroupService.findById(id);
		if (tmp != null) {
			tmp.setName(name);
			tmp.setDescription(description);
			ticketGroupService.update(tmp);
		} else {
			tmp = new TicketGroup();
			tmp.setName(name);
			tmp.setDescription(description);
			ticketGroupService.add(tmp);
		}

		return "redirect:/admin/ticketGroup/index";
	}

	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestParam("id") Long id) {
		Result result = new Result();
		result.setSuccess(true);
		if (id > 0L) {
			ticketGroupService.delete(id);
		}
		return JSONObject.toJSONString(result);
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String edit(Long id, Model model) {
		TicketGroup tg = null;
		if (id > 0L) {
			tg = ticketGroupService.findById(id);
		}
		if (tg == null) {
			tg = new TicketGroup();
		}
		model.addAttribute("ticketGroup", tg);
		return "ticketGroup/add";
	}

}
