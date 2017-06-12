package com.ramostear.jbuilder.kit.ziyoubaokit;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import com.ramostear.jbuilder.kit.ziyoubaokit.vo.SendOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.TicketVO;
import com.ramostear.jbuilder.util.PropertiesUtil;

public class XmlTemplate {
	
	public static Properties p=PropertiesUtil.getInstance().getProperties("ziyoubao");
	/**
	 * 下单xml模板
	 * @param vo
	 * @return
	 */
	public static String sendOrderTemp(SendOrderVO vo){
		StringBuilder sb=new StringBuilder();
		sb.append("<PWBRequest>");
		sb.append("<transactionName>SEND_CODE_REQ</transactionName>");
		sb.append(getHead());
		sb.append(getIden());
		sb.append("<orderRequest>");
		sb.append("<order>");
		sb.append("<certificateNo></certificateNo>");
		sb.append("<linkName>"+vo.getLinkName()+"</linkName>");
		sb.append("<linkMobile>"+vo.getLinkMobile()+"</linkMobile>");
		sb.append("<orderCode>"+vo.getOrderCode()+"</orderCode>");
		sb.append("<orderPrice>"+vo.getOrderPrice()+"</orderPrice>");
		sb.append("<groupNo></groupNo>");
		sb.append("<payMethod>"+vo.getPayMethod()+"</payMethod>");
		sb.append("<ticketOrders>");
		
		for(TicketVO v : vo.getTicketList()){
			sb.append("<ticketOrder>");
			sb.append("<orderCode>"+v.getOrderCode()+"</orderCode>");
			sb.append("<price>"+v.getPrice()+"</price>");
			sb.append("<quantity>"+v.getQuantity()+"</quantity>");
			sb.append("<totalPrice>"+v.getTotalPrice()+"</totalPrice>");
			sb.append("<occDate>"+v.getOccDate()+"</occDate>");
			sb.append("<goodsCode>"+v.getGoodsCode()+"</goodsCode>");
			sb.append("<goodsName>"+v.getGoodsName()+"</goodsName>");
			sb.append("<remark>"+v.getRemark()+"</remark>");
			sb.append("</ticketOrder>");
		}
		sb.append("</ticketOrders>");
		sb.append("</order>");
		sb.append("</orderRequest>");
		sb.append("</PWBRequest>");
		return sb.toString();
	}
	
	/**
	 * 取消整个订单
	 * @param orderid
	 * @return
	 */
	public static String cancelOrder(String orderCode){
		StringBuilder sb=new StringBuilder();
		sb.append("<PWBRequest>");
		sb.append("<transactionName>SEND_CODE_CANCEL_NEW_REQ</transactionName>");
		sb.append(getHead());
		sb.append(getIden());
		sb.append("<orderRequest>");
		sb.append("<order>");
		sb.append("<orderCode>"+orderCode+"</orderCode>");
		sb.append("</order>");
		sb.append("</orderRequest>");
		sb.append("</PWBRequest>");
		return sb.toString();
	}
	
	/**
	 * 取消部分订单
	 * @param childOrderCode 
	 * @param number
	 * @param returnCode
	 * @return
	 */
	public static String cancelChildOfOrder(String childOrderCode,Integer number,String returnCode){
		StringBuilder sb=new StringBuilder();
		sb.append("<PWBRequest>");
		sb.append("<transactionName>RETURN_TICKET_NUM_NEW_REQ</transactionName>");
		sb.append(getHead());
		sb.append(getIden());
		sb.append("<orderRequest>");
		sb.append("<returnTicket>");
		sb.append("<orderCode>"+childOrderCode+"</orderCode>");
		sb.append("<returnNum>"+number+"</returnNum>");
		sb.append("<thirdReturnCode>"+returnCode+"</thirdReturnCode>");
		sb.append("</returnTicket>");
		sb.append("</orderRequest>");
		sb.append("</PWBRequest>");
		return sb.toString();
	}
	/**
	 * 查询取消订单状态
	 * @param retreatBatchNo
	 * @return
	 */
	public static String queryCancelOrder(String retreatBatchNo){
		StringBuilder sb=new StringBuilder();
		sb.append("<PWBRequest>");
		sb.append("<transactionName>QUERY_RETREAT_STATUS_REQ</transactionName>");
		sb.append(getHead());
		sb.append(getIden());
		sb.append("<orderRequest>");
		sb.append("<order>");
		sb.append("<retreatBatchNo>"+retreatBatchNo+"</retreatBatchNo>");
		sb.append("</order>");
		sb.append("</orderRequest>");
		sb.append("</PWBRequest>");
		return sb.toString();
	}
	
	public static String getDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
	    String dateNowStr = sdf.format(new Date());
	    return dateNowStr;
	}
	
	public static String getHead(){
		StringBuilder sb=new StringBuilder();
		sb.append("<header>");
		sb.append("<application>SendCode</application>");
		sb.append("<requestTime>"+getDate()+"</requestTime>");//请求时间
		sb.append("</header>");
		return sb.toString();
	}
	
	public static String getIden(){
		StringBuilder sb=new StringBuilder();
		sb.append("<identityInfo>");
		sb.append("<corpCode>"+p.getProperty("corpCode")+"</corpCode>");
		sb.append("<userName>"+p.getProperty("userName")+"</userName>");
		sb.append("</identityInfo>");
		return sb.toString();
	}
	
}
