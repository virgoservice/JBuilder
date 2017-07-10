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

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.ramostear.jbuilder.entity.Attachment;
import com.ramostear.jbuilder.entity.ScenicSpot;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.entity.TicketAttachment;
import com.ramostear.jbuilder.entity.TicketGroup;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.kit.ReqDto;
import com.ramostear.jbuilder.kit.Result;
import com.ramostear.jbuilder.service.AttachmentService;
import com.ramostear.jbuilder.service.ScenicSpotService;
import com.ramostear.jbuilder.service.TicketAttachmentService;
import com.ramostear.jbuilder.service.TicketGroupService;
import com.ramostear.jbuilder.service.TicketService;
import com.ramostear.jbuilder.util.QiniuFileUtil;

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
	@Autowired
	private AttachmentService attachmentService;
	@Autowired
	private ScenicSpotService scenicSpotService;
	@Autowired
	private TicketAttachmentService ticketAttachmentService;

//	/**
//	 * 表单提交日期绑定      
//	 * @return 
//	 */
//	@InitBinder
//	public void initBinder(WebDataBinder binder){
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		dateFormat.setLenient(false);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
//	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		List<TicketGroup> groupList = new ArrayList<TicketGroup>();
		groupList = ticketGroupService.findAll();
		model.addAttribute("groupList", groupList);
		
		List<ScenicSpot> scenicList = new ArrayList<ScenicSpot>();
		scenicList = scenicSpotService.findAll();
		model.addAttribute("scenicList", scenicList);
		return "ticket/index";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ReqDto reqDto, Model model) {
		PageDto<Ticket> pageDto = new PageDto<Ticket>();
		int offset = reqDto.getPageNo();
		int size = reqDto.getPageSize();

		pageDto = ticketService.findByPage(offset, size, "scenicId", true);
		model.addAttribute("pageDto", pageDto);
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
		List<TicketGroup> groupList = new ArrayList<TicketGroup>();
		groupList = ticketGroupService.findAll();
		model.addAttribute("groupList", groupList);
		
		List<ScenicSpot> scenicList = new ArrayList<ScenicSpot>();
		scenicList = scenicSpotService.findAll();
		model.addAttribute("scenicList", scenicList);
		Ticket ticket = new Ticket();
		model.addAttribute("ticket", ticket);
		return "ticket/add";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Model model, @RequestParam("id") long id) {
		Ticket ticket = ticketService.findById(id);

		List<TicketAttachment> imgList = new ArrayList<TicketAttachment>();
		List<ScenicSpot> scenicList = new ArrayList<ScenicSpot>();
		List<TicketGroup> groupList = new ArrayList<TicketGroup>();

		scenicList = scenicSpotService.findAll();
		model.addAttribute("scenicList", scenicList);
		groupList = ticketGroupService.findAll();
		model.addAttribute("groupList", groupList);
		if(ticket != null){
			imgList = ticketAttachmentService.listByPage(ticket.getId(), null, null,
					TicketAttachment.USE_LIST, "showOrder", true, 0, 10);
		}else{
			ticket = new Ticket();//直接创建一个新的
		}
		model.addAttribute("imgList", imgList);
		model.addAttribute("ticket", ticket);

		return "ticket/edit";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addOrEdit(Model model, HttpServletRequest request) {
		Result result = new Result();
		result.setSuccess(true);

		Long id = Long.parseLong(request.getParameter("id"));
		Long scenicId = Long.parseLong(request.getParameter("scenicId"));
		Long groupId = Long.parseLong(request.getParameter("groupId"));
		String name = request.getParameter("name");
		double price = Double.parseDouble(request.getParameter("price"));
		double shopPrice = Double.parseDouble(request.getParameter("shopPrice"));
		Integer stock = Integer.parseInt(request.getParameter("stock"));
		Integer goodsType = Integer.parseInt(request.getParameter("goodsType"));
		boolean groupTickets = Boolean.parseBoolean(request.getParameter("groupTickets"));

		Integer status = Integer.parseInt(request.getParameter("status"));
		String[] weekDateArray = request.getParameterValues("weekDate");
		System.out.println(weekDateArray);
		String weekDate = "0,1,2,3,4,5,6";
		if(weekDateArray != null){
			weekDate = "";
			for(int i= 0 ; i < weekDateArray.length; i++){
				weekDate += weekDateArray[i] + ",";
			}
		}

		String beginDateStr = request.getParameter("beginDate");
		String endDateStr = request.getParameter("endDate");
		String checkTimeStr = request.getParameter("checkTime");
		String stopCheckTimeStr = request.getParameter("stopCheckTime");

		Date beginDate = null;
		Date endDate = null;
		Date checkTime = null;
		Date stopCheckTime = null;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm");
		try {
			beginDate = sdf.parse(beginDateStr);
			endDate = sdf.parse(endDateStr);
			checkTime = sdf2.parse(checkTimeStr);
			stopCheckTime = sdf2.parse(stopCheckTimeStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		Integer sellout = 0;
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		String year = String.valueOf(calendar.get(Calendar.YEAR)%100);
		String month = String.valueOf(calendar.get(Calendar.MONTH) + 1);
		String day = String.valueOf(calendar.get(Calendar.DAY_OF_MONTH));
		String hour = String.valueOf(calendar.get(Calendar.HOUR_OF_DAY));
		String goodsCode = "T" + scenicId + year + month + day + hour + "" + (int) (8999*Math.random()+1000);

		Ticket ticket = new Ticket(id, scenicId, groupId, name, goodsCode, price, shopPrice, stock, goodsType,
				groupTickets, beginDate, endDate, weekDate, checkTime, stopCheckTime, sellout, status, null);

		Ticket tmp = null;
		if (id > 0L) {
			tmp = ticketService.findById(id);
		}
		if (tmp != null) {
			System.out.println(weekDate);
			
			ticket.setId(tmp.getId());
			ticketService.update(ticket);// TODO
		} else {
			ticket.setGoodsCode(goodsCode);
			ticketService.add(ticket);
		}

		System.out.println("ticketId === " + ticket.getId());
		model.addAttribute("ticketId", ticket.getId());
		return "ticket/add-image";
	}

	@RequestMapping(value = "/del", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestParam("id") Long id) {
		Result result = new Result();
		result.setSuccess(true);
		if (id > 0L) {
			ticketService.delete(id);
		}
		//TODO
		return JSONObject.toJSONString(result);
	}

	@RequestMapping(value = "/stop", method = RequestMethod.POST)
	@ResponseBody
	public String stop(@RequestParam("id") Long id) {
		Result result = new Result();
		result.setSuccess(false);
		if (id > 0L) {
			Ticket t = ticketService.findById(id);
			if(t != null){
				int status = t.getStatus();
				t.setStatus(status == 1? 0 : 1);
				ticketService.update(t);
				result.setSuccess(true);
			}
		}
		return JSONObject.toJSONString(result);
	}
	
	@RequestMapping(value = "/grouping", method = RequestMethod.POST)
	@ResponseBody
	public String grouping(@RequestParam("ticketId") Long ticketId, @RequestParam("groupId")Long groupId) {
		Result result = new Result();
		result.setSuccess(false);
		if(ticketId > 0 && groupId > 0){
			Ticket t = ticketService.findById(ticketId);
			if(t != null){
				t.setGroupId(groupId);
				ticketService.update(t);
				result.setSuccess(true);
			}
		}

		return JSONObject.toJSONString(result);
	}

	/**
	 * 添加景点列表图片
	 * @param file
	 * @param ticketId
	 * @param useof 用做列表展示
	 * @return
	 */
	@RequestMapping(value = "/addImage", method = RequestMethod.POST)
	@ResponseBody
	public String addImage(@RequestParam(value = "file") MultipartFile file,
			@RequestParam("ticketId") Integer ticketId, 
			@RequestParam("useof") Integer useof) {
		Result result = new Result();
		result.setSuccess(false);
		if (ticketId <= 0) {
			return JSONObject.toJSONString(result);
		}

		Attachment attach = saveAttachment(file);
		if (attach != null) {
			TicketAttachment ta = new TicketAttachment();
			ta.setAttachmentUrl(attach.getUrl());
			ta.setAttachmentId(attach.getId());
			ta.setTicketId((long)ticketId);
			if (useof == TicketAttachment.USE_LIST) {
				ta.setUseof(TicketAttachment.USE_LIST);
			} else if (useof == TicketAttachment.USE_ILLU) {
				ta.setUseof(TicketAttachment.USE_ILLU);
			} else if (useof == TicketAttachment.USE_COVER) {
				ta.setUseof(TicketAttachment.USE_COVER);
			}
			ticketAttachmentService.save(ta);
			result.setSuccess(true);
			result.setObj(new String(attach.getUrl()));
		}

		return JSONObject.toJSONString(result);
	}

	@RequestMapping(value = "/addIntro", method = RequestMethod.GET)
	public String addIntroduce(Model model, int ticketId) {
		model.addAttribute("ticketId", ticketId);
		return "ticket/add-intro";
	}

	@RequestMapping(value = "/addIntro", method = RequestMethod.POST)
	public String addDescription(@RequestParam("content") String content, @RequestParam("ticketId") int ticketId) {
		System.out.println(content);
		if (ticketId > 0) {
			Ticket t = ticketService.findById((long) ticketId);
			if (t != null) {
				t.setDescription(content);
				ticketService.update(t);

				List<String> imgList = new ArrayList<String>();
				if (content != null && content.trim().length() > 1) {
					String regexImage = "<img.+?src=\"(.+?)\".+?/?>";
					Pattern p = Pattern.compile(regexImage, Pattern.CASE_INSENSITIVE);
					Matcher m = p.matcher(content);
					while (m.find()) {
						imgList.add(m.group(1));
					}
				}
				for (String url : imgList) {
					System.out.println(url);
					if (null != url && !"".equals(url)) {
						TicketAttachment ta = new TicketAttachment();
						ta.setTicketId((long) ticketId);
						ta.setAttachmentUrl(url);
						ta.setUseof(TicketAttachment.USE_ILLU);
						ticketAttachmentService.save(ta);
					}
				}
				return "redirect:/admin/ticket/index";
			}
		}
		return "ticket/add";//TODO
	}

	@RequestMapping(value = "/addIllus", method = RequestMethod.POST)
	public void uploadIllus(MultipartFile upload, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		// CKEditor提交的很重要的一个参数
		String callback = request.getParameter("CKEditorFuncNum");
		String uploadContentType = upload.getContentType();
		if (uploadContentType.equals("image/pjpeg") || uploadContentType.equals("image/jpeg")) {
			// IE6上传jpg图片的headimageContentType是image/pjpeg,
			// 而IE9以及火狐上传的JPG图片是image/jpeg
		} else if (uploadContentType.equals("image/png") || uploadContentType.equals("image/x-png")) {
			// IE6上传的png图片的headimageContentType是"image/x-png"
		} else if (uploadContentType.equals("image/gif")) {
		} else if (uploadContentType.equals("image/bmp")) {
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",'',"
					+ "'文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）');");
			out.println("</script>");
			return;
		}

		// if (upload.length() > 600 * 1024) {
		// out.println("<script type=\"text/javascript\">");
		// out.println("window.parent.CKEDITOR.tools.callFunction(" + callback
		// + ",''," + "'文件大小不得大于600k');");
		// out.println("</script>");
		// return ;
		// }

		Attachment attach = saveAttachment(upload);
		if (attach != null) {
			out.println("<script type=\"text/javascript\">");
			out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + attach.getUrl() + "',)");
			out.println("</script>");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",''," + "'上传图片发生错误');");
			out.println("</script>");
		}
		return;
	}

	protected Attachment saveAttachment(MultipartFile file){
		String url = QiniuFileUtil.upload(file);
		// System.out.println(">>>> add url = " + url);
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
			attachmentService.save(attach);
			return attach;
		}
		return null;
	}

}
