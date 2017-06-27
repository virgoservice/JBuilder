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
	 * @param cancelOrderId 退款记录id
	 * @param id 
	 * @param returnNum	退款数量
	 * @return
	 */
	public boolean AlipayRefunds(Long cancelOrderId, Long id);

	
}
