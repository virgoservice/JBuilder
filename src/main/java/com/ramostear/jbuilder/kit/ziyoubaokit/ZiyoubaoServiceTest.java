package com.ramostear.jbuilder.kit.ziyoubaokit;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ramostear.jbuilder.kit.UserException;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqCancelOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.SendOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.TicketVO;
import com.ramostear.jbuilder.service.impl.ZiyoubaoServiceImpl;
import com.ramostear.jbuilder.util.HttpRequestUtil;
import com.ramostear.jbuilder.util.PropertiesUtil;
import com.ramostear.jbuilder.util.StaxonUtils;


public class ZiyoubaoServiceTest {
	
	public static String testUrl="http://ds-zff.sendinfo.com.cn/boss/service/code.htm";
	public static String userName="admin";
	public static String corpCode="TESTFX";
	public static String privateKey="TESTFX";
	public static String testGoodCode="PST20160918013085";
	
	public static String sendOrder(){
		
		return "";
	}
	
	public static void main(String[] args) throws Exception {
		
		
		//下单
		//String reqstr=XmlTemplate.sendOrderTemp("ts13213232333", testGoodCode, "vm","2017-5-5", corpCode,userName, "200", "50010919881125191x", "50");
		//取消整个订单。
		//String reqstr=XmlTemplate.cancelOrder("ts13213232333");
		//取消部分订单
		//String reqstr=XmlTemplate.cancelOrder(orderid);
		//查询取消订单状态
		//af1edf5e2ef3465cbe2769f48841bf6b
//		String reqstr=XmlTemplate.queryCancelOrder("af1edf5e2ef3465cbe2769f48841bf6b");
//		String res=HttpRequestUtil.sendPost(reqstr);
//	
//   
//	    String sjon=StaxonUtils.xml2json(res);
//	    JSONObject object = JSON.parseObject(sjon);  
//	    System.out.println(object);
//	    JSONObject object2 = object.getJSONObject("PWBResponse");
//	    System.out.println(object2.getInteger("code"));
	    //Map<String, Class> cm = new HashMap<String, Class>(); 
		//XStream xstream = new XStream();
		//xstream.alias("person", Ticket.class);  
		//System.out.println(xstream.fromXML(res));
		
		
		
//		下单测试
//		ZiyoubaoServiceImpl ser=new ZiyoubaoServiceImpl();
//		SendOrderVO svo=new SendOrderVO();
//		svo.setOrderCode("t009");
//		svo.setLinkName("laowang");
//		svo.setLinkMobile("13648362969");
//		svo.setOrderPrice(10000);
//		svo.setPayMethod("zyb");
//		
//		List<TicketVO> tlist=new ArrayList<TicketVO>();
//		TicketVO tvo=new TicketVO();
//		tvo.setGoodsCode("PST20160918013085");
//		tvo.setGoodsName("测试票");
//		tvo.setOccDate("2017-06-18 12:12:12");
//		tvo.setOrderCode("c009");
//		tvo.setPrice(213.21);
//		tvo.setQuantity(2);
//		tvo.setTotalPrice(500);
//		tvo.setRemark("这是备注");
//		tlist.add(tvo);
//		svo.setTicketList(tlist);
//		ReqOrderVO result=ser.sendOrder(svo);
//		System.out.println(result.getDescription());
//		System.out.println(result.toString());
		
//		ZiyoubaoServiceImpl ser=new ZiyoubaoServiceImpl();
//		ReqCancelOrderVO ret=ser.cancelOrder("t009");
//		System.out.println(ret.toString());
		
//		退票状态查询测试
		ZiyoubaoServiceImpl ser=new ZiyoubaoServiceImpl();
		ReqVO ret=ser.queryCancelResult("e7f3e216bdd0485489a6102d9640e475");
		System.out.println(ret.toString());
		
		
	}
	
	
}
