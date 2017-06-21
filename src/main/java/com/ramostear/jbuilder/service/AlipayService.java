/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月21日 上午11:03:46
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.Map;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月21日 上午11:03:46 
 * @email:361801580@qq.com 
 */
public interface AlipayService {

	/**
	 * 支付宝通知回调
	 * @param param
	 * @return 
	 */
	public boolean AlipayNotice(Map<String,String> param);
	
	/**
	 * 退款
	 * @param orderId 订单id
	 * @param cOrderId 子订单id
	 * @param returnNum 退票数量（ziyoubao接口返回）
	 * @param retreatBatchNo 
	 * @return
	 */
	public boolean AlipayRefunds(Long orderId,Long cOrderId,Integer returnNum, String retreatBatchNo);
}
