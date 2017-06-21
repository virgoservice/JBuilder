/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午6:59:53
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.servicetest;

import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayOpenPublicTemplateMessageIndustryModifyRequest;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.request.AlipayTradePayRequest;
import com.alipay.api.response.AlipayOpenPublicTemplateMessageIndustryModifyResponse;
import com.alipay.api.response.AlipayTradePayResponse;
import com.ramostear.jbuilder.kit.alipay.AlipayManager;


/**
 * @description:
 * @author: vabo
 * @version:
 * @Datetime:2017年6月10日
 * @Email:
 */
public class ZhiyoubaoServiceTest {

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
//		svo.setOrderCode("t008");
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
//		tvo.setOrderCode("c008");
//		tvo.setPrice(213.21);
//		tvo.setQuantity(2);
//		tvo.setTotalPrice(500);
//		tvo.setRemark("这是备注");
//		tlist.add(tvo);
//		退票测试
		//svo.setTicketList(tlist);
		//ReqOrderVO result=ser.sendOrder(svo);
		//System.out.println(result.getDescription());
		//System.out.println(result.toString());
//		退票状态查询测试
		//ZiyoubaoServiceImpl ser=new ZiyoubaoServiceImpl();
		//ReqVO ret=ser.queryCancelResult("67ad784bd68543adb1aa28ceb2aa9ead");
		//System.out.println(ret.toString());
		//ReqOrderVO result=ser.sendOrder(svo);
		//System.out.println(result.toString());
		//f1fa8a239a3f4519ae08612ae2bdf6aa
		

		//实例化客户端
//		AlipayClient alipayClient = AlipayManager.getIstance();
//		
//		
//		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();//创建API对应的request
//	    alipayRequest.setReturnUrl("http://domain.com/CallBack/return_url.jsp");
//	    alipayRequest.setNotifyUrl("http://domain.com/CallBack/notify_url.jsp");//在公共参数中设置回跳和通知地址
//	    alipayRequest.setBizContent("{" +
//	        "    \"out_trade_no\":\"20150320010101001\"," +
//	        "    \"product_code\":\"FAST_INSTANT_TRADE_PAY\"," +
//	        "    \"total_amount\":88.88," +
//	        "    \"subject\":\"Iphone6 16G\"," +
//	        "    \"body\":\"Iphone6 16G\"," +
//	        "    \"passback_params\":\"merchantBizType%3d3C%26merchantBizNo%3d2016010101111\"," +
//	        "    \"extend_params\":{" +
//	        "    \"sys_service_provider_id\":\"2088511833207846\"" +
//	        "    }"+
//	        "  }");//填充业务参数
//	    String form="";
//	    try {
//	        form = alipayClient.pageExecute(alipayRequest).getBody(); //调用SDK生成表单
//	    } catch (AlipayApiException e) {
//	        e.printStackTrace();
//	    }
//	    System.out.println(form.toString());
		
		Map<String, Object> map = new HashMap<String, Object>();  
		map.put("out_trade_no", "20150320010101001");
		map.put("product_code", "FAST_INSTANT_TRADE_PAY");
		map.put("total_amount", "10");
		map.put("subject", "234");
		map.put("body", "234234234");
		String json = JSON.toJSONString(map);
		System.out.println(json);
		
		
		String test="{" +
      "    \"out_trade_no\":\"20150320010101001\"," +
      "    \"product_code\":\"FAST_INSTANT_TRADE_PAY\"," +
      "    \"total_amount\":88.88," +
      "    \"subject\":\"sdf水电费水电费 16G\"," +
      "    \"body\":\"Iphone6 16G\"," +
      "    \"passback_params\":\"merchantBizType%3d3C%26merchantBizNo%3d2016010101111\"," +
      "    \"extend_params\":{" +
      "    \"sys_service_provider_id\":\"2088511833207846\"" +
      "    }"+
      "  }";
		System.out.println(test);
	}
}
