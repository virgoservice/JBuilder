/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 下午4:31:37
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ramostear.jbuilder.entity.Attachment;
import com.ramostear.jbuilder.service.AttachmentService;
import com.ramostear.jbuilder.util.QiniuFileUtil;

/**
 * @description:
 * @author: vabo
 * @version:
 * @Datetime:2017年5月5日
 * @Email:
 */
@Controller()
public class AttachmentController {

	@Autowired
	private AttachmentService attachmentService;

	@RequestMapping(value = "/admin/attachment/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<Attachment> attachmentList = attachmentService.listAll();
		if (attachmentList == null) {
			attachmentList = new ArrayList<Attachment>();
		}
		model.addAttribute("attachmentList", attachmentList);
		return "attachment/list";
	}

	@RequestMapping(value = "/admin/attachment/add", method = RequestMethod.GET)
	public String add() {

		return "attachment/add";
	}

	@RequestMapping(value = "/admin/attachment/add", method = RequestMethod.POST)
	public String add(@RequestParam(value = "file") MultipartFile file) {
		String url = QiniuFileUtil.upload(file);
		Attachment attach = new Attachment();
		if (null != url && !"".equals(url)) {
			String fileName = file.getOriginalFilename();
			Long size = file.getSize();
			String type = file.getContentType();
			attach.setCreateTime(new Date());
			attach.setName(fileName);
			attach.setTitle(fileName);
			attach.setSize((double) (size / 1024));// KB
			attach.setType(type);
			attach.setUrl(url);
			attach.setDescription(fileName);
//			System.out.println(">>>> add url = " + url);
			attachmentService.save(attach);
		}

		return "attachment/list";
	}

	@RequestMapping(value = "/admin/attachment/edit", method = RequestMethod.GET)
	public String edit(@RequestParam("id") Long id, Model model) {
		Attachment attachment = attachmentService.findById(id);
		if (attachment == null) {
			attachment = new Attachment();
		}
		model.addAttribute("attachment", attachment);
		return "attachment/edit";
	}
	
	@RequestMapping(value = "/admin/attachment/edit", method = RequestMethod.POST)
	@ResponseBody
	public String edit(@RequestParam("id") Long id, @RequestParam("title") String title,
			@RequestParam("description") String description, Model model) {
		Attachment attachment = attachmentService.findById(id);
		if (attachment != null) {
			if (title != null && title.trim() != "") {
				attachment.setTitle(title.trim());
			}
			if (description != null) {
				attachment.setDescription(description);
			}
			attachmentService.update(attachment);
			return "update success";
		}
		return "failure";
	}

	@RequestMapping(value = "/admin/attachment/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestParam("id") Long id) {
		Attachment attachment = attachmentService.findById(id);
		if (attachment != null) {
			QiniuFileUtil.deleteQiniuFile(attachment.getUrl());
			attachmentService.delete(id);
		}
		return "success";
	}

}
