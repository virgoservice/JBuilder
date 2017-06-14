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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ramostear.jbuilder.entity.Ticket;
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
		long id = ticket.getId();
		Ticket tmp = ticketService.findById(id);
		if (tmp != null) {

		}

		if (ticket.getGoodsCode() != null) {
		}

		return "success";
	}

	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public String delete() {
		return "success";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "ticket/index";
	}

}
