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

import com.ramostear.jbuilder.entity.TicketGroup;
import com.ramostear.jbuilder.kit.PageDto;
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

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public String addOrEdit(TicketGroup ticketGroup) {
		long id = ticketGroup.getId();
		String name = ticketGroup.getName();
		if (name == null || name.trim().length() == 0) {
			return "parameter error";
		}

		TicketGroup tmp = null;
		tmp = ticketGroupService.findById(id);
		if (tmp != null) {
			tmp.setId(id);
			ticketGroupService.update(tmp);
		} else {
			tmp = new TicketGroup();
			tmp.setName(name);
			tmp.setDescription(ticketGroup.getDescription());
			ticketGroupService.add(ticketGroup);
		}

		return "success";
	}

	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestParam("id") Long id) {
		if (id > 0L) {
			ticketGroupService.delete(id);
		}
		return "success";
	}

	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(Model model, @RequestParam("pageNo") int pageNo, @RequestParam("pageSize") int pageSize) {
		PageDto<TicketGroup> pageDto = ticketGroupService.findByPage(pageNo, pageSize, null, true, null);
		model.addAttribute("pageDto", pageDto);
		return "ticketGroup/list";
	}

}
