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
import com.ramostear.jbuilder.entity.ScenicSpot;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.service.ScenicSpotService;

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
		result.setSuccess(true);
		result.setObj(new String("已经除"));
		int ticketCount = 0; 
		if (id > 0) {
			ticketCount = scenicSpotService.containTickets(id);
		}

		if(ticketCount >= 1){
			result.setSuccess(false);
			result.setObj(new String("不能被删除,请先删除相关产品"));
		}else{
			scenicSpotService.delete(id);
		}

		return JSONObject.toJSONString(result);
	}

	@ResponseBody
	@RequestMapping(value = "/scenicData", method = RequestMethod.GET)
	public List<ScenicSpot> getScenicData() {
		List<ScenicSpot> scenicList = new ArrayList<ScenicSpot>();
		scenicList = scenicSpotService.findAll();
		return scenicList;
	}

}
