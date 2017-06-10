package com.ramostear.jbuilder.kit.ziyoubaokit;

import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ramostear.jbuilder.util.HttpRequestUtil;
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
		String reqstr=XmlTemplate.queryCancelOrder("af1edf5e2ef3465cbe2769f48841bf6b");
		String res=HttpRequestUtil.sendPost(testUrl,reqstr,privateKey);
		
	    String sjon=StaxonUtils.xml2json(res);
	    
	    JSONObject object = JSON.parseObject(sjon);  
	    JSONObject object2 = object.getJSONObject("PWBResponse");
	    System.out.println(object.get("PWBResponse"));
	    Map<String, Class> cm = new HashMap<String, Class>(); 
		//XStream xstream = new XStream();
		//xstream.alias("person", Ticket.class);  
		//System.out.println(xstream.fromXML(res));
    }
	
	
}
