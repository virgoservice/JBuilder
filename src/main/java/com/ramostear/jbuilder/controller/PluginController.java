/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 下午6:07:20
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ramostear.jbuilder.entity.Plugin;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.service.PluginService;

/**
 * @description:
 * @author: vabo
 * @version:
 * @Datetime:2017年5月5日
 * @Email:
 */
@Controller()
public class PluginController {

	@Autowired
	private PluginService pluginService;

	@RequestMapping(value = "/admin/plugin/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<Plugin> pluginList = null;
		pluginList = pluginService.listAll();
		model.addAttribute("pluginList", pluginList);
		return "plugin/list";
	}

	@RequestMapping(value = "/admin/plugin/add", method = RequestMethod.GET)
	public String add(Model model) {
		Plugin plugin = new Plugin();
		model.addAttribute("plugin", plugin);
		return "plugin/add";
	}

	@RequestMapping(value = "/admin/plugin/edit", method = RequestMethod.GET)
	public String edit(@RequestParam("id") Long id, Model model) {
		Plugin plugin = pluginService.findById(id);
		if (plugin == null) {
			plugin = new Plugin();
		}
		model.addAttribute("plugin", plugin);
		return "plugin/add";
	}

	@RequestMapping(value = "/admin/plugin/edit", method = RequestMethod.POST)
	@ResponseBody
	public Result edit(Plugin plugin) {
		Result result = new Result();
		result.setSuccess(false);
		Plugin tmp = pluginService.findById(plugin.getId());
		if (tmp != null) {
			tmp.setAccessKey(plugin.getAccessKey());
			tmp.setAccount(plugin.getAccount());
			tmp.setName(plugin.getName());
			tmp.setSecretKey(plugin.getSecretKey());
			tmp.setProvider(plugin.getProvider());
			tmp.setScript(plugin.getScript());
			tmp.setDescription(plugin.getDescription());
			tmp.setVersion(plugin.getVersion());
			pluginService.update(tmp);
			result.setSuccess(true);
		} else if (plugin.getName() != null && plugin.getName().trim() != "") {
			pluginService.save(plugin);
			result.setSuccess(true);
		}
		return result;
	}

	@RequestMapping(value = "/admin/plugin/start", method = RequestMethod.POST)
	@ResponseBody
	public Result start(@RequestParam("id") Long id) {
		Result result = new Result();
		result.setSuccess(false);
		Plugin tmp = pluginService.findById(id);
		if (tmp != null) {
			if (tmp.getStatus() == 1) {
				tmp.setStatus(0);
			} else if (tmp.getStatus() == 0) {
				tmp.setStatus(1);
			}
			pluginService.update(tmp);
			result.setSuccess(true);
		}
		return result;
	}

	@RequestMapping(value = "/admin/plugin/delete", method = RequestMethod.POST)
	@ResponseBody
	public Result delete(Long id) {
		Result result = new Result();
		result.setSuccess(false);
		Plugin plugin = pluginService.findById(id);
		if (plugin != null) {
			pluginService.delete(plugin.getId());
			result.setSuccess(true);
		}
		return result;
	}

}
