/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月12日 上午11:01:43
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ramostear.jbuilder.kit.ziyoubaokit.XmlTemplate;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqCancelOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.SendOrderVO;
import com.ramostear.jbuilder.service.ZiyoubaoService;
import com.ramostear.jbuilder.util.HttpRequestUtil;
import com.ramostear.jbuilder.util.StaxonUtils;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月12日 上午11:01:43 
 * @email:361801580@qq.com 
 */
public class ZiyoubaoServiceImpl implements ZiyoubaoService {

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ZiyoubaoService#sendOrder(com.ramostear.jbuilder.kit.ziyoubaokit.vo.SendOrderVO)
	 */
	@Override
	public ReqOrderVO sendOrder(SendOrderVO vo) {
		
		String reqstr=XmlTemplate.sendOrderTemp(vo);
		System.out.println(reqstr);
		String res=HttpRequestUtil.sendPost(reqstr);//发送结果
		String sjon=StaxonUtils.xml2json(res);		//结果转json
		JSONObject result = JSON.parseObject(sjon);  
	    JSONObject detail = result.getJSONObject("PWBResponse");
		
		ReqOrderVO rvo=new ReqOrderVO();
		rvo.setCode(detail.getInteger("code"));
		rvo.setDescription(detail.getString("description"));
		if(rvo.getCode()!=0)//如果报错了就直接返回
			return rvo;
		JSONObject order = detail.getJSONObject("orderResponse").getJSONObject("order");
		rvo.setLinkName(order.getString("linkName"));
		rvo.setLinkMobile(order.getString("linkMobile"));
		rvo.setOrderCode(order.getString("orderCode"));
		rvo.setOrderPrice(order.getDouble("orderPrice"));
		rvo.setPayMethod(order.getString("payMethod"));
		rvo.setAssistCheckNo(order.getString("assistCheckNo"));
		
		return rvo;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ZiyoubaoService#cancelOrder(java.lang.String)
	 */
	@Override
	public ReqCancelOrderVO cancelOrder(String orderCode) {
		
		String reqstr=XmlTemplate.cancelOrder(orderCode);
		String res=HttpRequestUtil.sendPost(reqstr);//发送结果
		String sjon=StaxonUtils.xml2json(res);		//结果转json
		JSONObject result = JSON.parseObject(sjon);  
	    JSONObject detail = result.getJSONObject("PWBResponse");
	    
		ReqCancelOrderVO r=new ReqCancelOrderVO();
		r.setCode(detail.getInteger("code"));
		r.setDescription(detail.getString("description"));
		if(r.getCode()!=0)//如果报错了就直接返回
			return r;
		r.setRetreatBatchNo(detail.getString("retreatBatchNo"));
		return r;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ZiyoubaoService#cancelChildOfOrder(java.lang.String, java.lang.Integer, java.lang.String)
	 */
	@Override
	public ReqCancelOrderVO cancelChildOfOrder(String childOrderCode,
			Integer number, String returnCode) {
		
		String reqstr=XmlTemplate.cancelChildOfOrder(childOrderCode, number, returnCode);
		String res=HttpRequestUtil.sendPost(reqstr);//发送结果
		String sjon=StaxonUtils.xml2json(res);		//结果转json
		JSONObject result = JSON.parseObject(sjon);  
	    JSONObject detail = result.getJSONObject("PWBResponse");
		
		ReqCancelOrderVO r=new ReqCancelOrderVO();
		r.setCode(detail.getInteger("code"));
		r.setDescription(detail.getString("description"));
		if(r.getCode()!=0)//如果报错了就直接返回
			return r;
		r.setRetreatBatchNo(detail.getString("retreatBatchNo"));
		return r;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ZiyoubaoService#queryCancelResult(java.lang.String)
	 */
	@Override
	public ReqVO queryCancelResult(String retreatBatchNo) {
		
		String reqstr=XmlTemplate.queryCancelOrder(retreatBatchNo);
		String res=HttpRequestUtil.sendPost(reqstr);//发送结果
		String sjon=StaxonUtils.xml2json(res);		//结果转json
		JSONObject result = JSON.parseObject(sjon);  
	    JSONObject detail = result.getJSONObject("PWBResponse");
	    
	    ReqVO r=new ReqVO();
		r.setCode(detail.getInteger("code"));
		r.setDescription(detail.getString("description"));
		return r;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ZiyoubaoService#send_sm(java.lang.String, java.lang.String)
	 */
	@Override
	public void send_sm(String ordercode, String tplCode) {
		// TODO Auto-generated method stub

	}

}
