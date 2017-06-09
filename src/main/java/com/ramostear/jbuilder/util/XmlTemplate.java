package com.ramostear.jbuilder.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class XmlTemplate {
	
	public static String getDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
	    String dateNowStr = sdf.format(new Date());
	    return dateNowStr;
	}

	/**
	 * 
	 * @param orderCode	订单号
	 * @param goodsCode 商品编码
	 * @param payMethod 支付方式
	 * @param occDate 游玩时间
	 * @param corpCode 企业码
	 * @param userName 用户名
	 * @param totalPrice 总价
	 * @param id	身份证号
	 * @param price 单价
	 * @return
	 */
	public static String sendOrderTemp(String orderCode,String goodsCode,String payMethod,String occDate,
			String corpCode,String userName,String totalPrice,String id,String price){
		StringBuilder sb=new StringBuilder();
		sb.append("<PWBRequest>");
		sb.append("<transactionName>SEND_CODE_REQ</transactionName>");
		sb.append("<header>");
		sb.append("<application>SendCode</application>");
		sb.append("<requestTime>"+getDate()+"</requestTime>");//请求时间
		sb.append("</header>");
		sb.append("<identityInfo>");
		sb.append("<corpCode>"+corpCode+"</corpCode>");
		sb.append("<userName>"+userName+"</userName>");
		sb.append("</identityInfo>");
		sb.append("<orderRequest>");
		sb.append("<order>");
		sb.append("<certificateNo>"+id+"</certificateNo>");
		sb.append("<linkName>庄工</linkName>");
		sb.append("<linkMobile>13625814109</linkMobile>");
		sb.append("<orderCode>"+orderCode+"</orderCode>");
		sb.append("<orderPrice>"+totalPrice+"</orderPrice>");
		sb.append("<groupNo></groupNo>");
		sb.append("<payMethod>"+payMethod+"</payMethod>");
		sb.append("<ticketOrders>");
		sb.append("<ticketOrder>");
		sb.append("<orderCode>2343434</orderCode>");
		sb.append("<price>"+price+"</price>");
		sb.append("<quantity>1</quantity>");
		sb.append("<totalPrice>1.00</totalPrice>");
		sb.append("<occDate>2017-06-09</occDate>");
		sb.append("<goodsCode>PST20160918013085</goodsCode>");
		sb.append("<goodsName>商品名称</goodsName>");
		sb.append("<remark>备注</remark>");
		sb.append("</ticketOrder>");
		sb.append("<ticketOrder>");
		sb.append("<orderCode>31321312dd33221</orderCode>");
		sb.append("<price>"+price+"</price>");
		sb.append("<quantity>1</quantity>");
		sb.append("<totalPrice>1.00</totalPrice>");
		sb.append("<occDate>2017-06-09</occDate>");
		sb.append("<goodsCode>PST20160918013085</goodsCode>");
		sb.append("<goodsName>商品名称</goodsName>");
		sb.append("<remark>备注</remark>");
		sb.append("</ticketOrder>");
		sb.append("</ticketOrders>");
		sb.append("</order>");
		sb.append("</orderRequest>");
		sb.append("</PWBRequest>");
		return sb.toString();
	}
	
	public static String cancelOrder(String orderid){
		StringBuilder sb=new StringBuilder();
		sb.append("<transactionName>SEND_CODE_CANCEL_NEW_REQ</transactionName>");
		sb.append("<header>");
		sb.append("<application>SendCode</application>");
		sb.append("<requestTime>"+getDate()+"</requestTime>");
		sb.append("</header>");
		sb.append("<identityInfo>");
		sb.append("<corpCode>TESTFX</corpCode>");
		sb.append("<userName>ADMIN</userName>");
		sb.append("</identityInfo>");
		sb.append("<orderRequest>");
		sb.append("<order>");
		sb.append("<orderCode>"+orderid+"</orderCode>");
		sb.append("</order>");
		sb.append("</orderRequest>");
		sb.append("</PWBRequest>");
		return sb.toString();
	}
	
}
