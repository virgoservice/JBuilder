package com.ramostear.jbuilder.util;

import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jhlabs.composite.SaturationComposite;
import com.qq.connect.utils.http.BASE64Encoder;


public class ZiyoubaoService {
	
	public static String testUrl="http://ds-zff.sendinfo.com.cn/boss/service/code.htm";
	public static String userName="admin";
	public static String corpCode="TESTFX";
	public static String privateKey="TESTFX";
	public static String testGoodCode="PST20160918013085";
	
	public static String sendOrder(){
		
		return "";
	}
	
	public static void main(String[] args) throws Exception {
		
		
		//String reqstr=XmlTemplate.sendOrderTemp("ts13213232", testGoodCode, "vm","2017-5-5", corpCode,userName, "200", "50010919881125191x", "50");
		String reqstr=XmlTemplate.cancelOrder("31321312dd33221");
		String res=HttpRequestUtil.sendPost(testUrl,reqstr,privateKey);
		
	    String sjon=StaxonUtils.xml2json(res);
	    
	    JSONObject object = JSON.parseObject(sjon);  
	    JSONObject object2 = object.getJSONObject("PWBResponse");
	    System.out.println(object.get("PWBResponse"));
	       
    }
	
	
}
