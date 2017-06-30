/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月14日 下午4:32:30
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
import com.ramostear.jbuilder.entity.ScenicSpot;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.service.ScenicSpotService;
import com.ramostear.jbuilder.service.TicketService;

/**
 * @description: 对应景区
 * @author: vabo
 * @version:
 * @Datetime:2017年6月14日
 * @Email:
 */
@Controller
@RequestMapping("/admin/scenic")
public class ScenicSpotController {

	@Autowired
	private ScenicSpotService scenicSpotService;
	@Autowired
	private TicketService ticketService;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String list(Model model) {
		PageDto<ScenicSpot> scenicPageDto = null;
		scenicPageDto = scenicSpotService.findByPage(1, 10, "id", true, "");
		model.addAttribute("pageDto", scenicPageDto);
		return "scenic/index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public String add(@RequestParam("name")String name) {
		Result result = new Result();
		result.setSuccess(false);
		if (name != null && name.trim().length() > 1) {
			ScenicSpot scenicSpot = new ScenicSpot(0L, name);
			scenicSpotService.add(scenicSpot);
			result.setSuccess(true);
		}
		return JSONObject.toJSONString(result);
	}

	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public String delete(@RequestParam("id")Long id) {
		Result result = new Result();
		result.setSuccess(false);
		Ticket ticket = null;
		if (id > 0) {
			ticket = ticketService.findById(id);
		}

		if (null == ticket) {
			scenicSpotService.delete(id);
			result.setSuccess(false);
			result.setObj(new String("不能被删除"));
		}
		return JSONObject.toJSONString(result);
	}

}