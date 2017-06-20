/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午4:24:33
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqCancelOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqOrderVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.ReqVO;
import com.ramostear.jbuilder.kit.ziyoubaokit.vo.SendOrderVO;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月10日 下午4:24:33 
 * @email:361801580@qq.com 
 */
public interface ZiyoubaoService {

	/**
	 * 下订单
	 * @param vo
	 * @return
	 */
	public ReqOrderVO sendOrder(SendOrderVO vo);
	
	/**
	 * 取消订单（全部商品）
	 * @param orderCode 主订单号
	 * @return
	 */
	public ReqCancelOrderVO cancelOrder(String orderCode);
	
	/**
	 * 取消订单（订单里的子定订单）
	 * @param childOrderCode 子订单不号
	 * @param number 票数
	 * @param returnCode 退单号
	 * @return
	 */
	public ReqCancelOrderVO cancelChildOfOrder(String childOrderCode,Integer number,String returnCode);
	
	/**
	 * 退票情况查询
	 * @retreatBatchNo 退单情况查询编号
	 * @return
	 */
	public ReqVO queryCancelResult(String retreatBatchNo);
	
	/**
	 * 发送短信
	 * @param ordercode
	 * @param tplCode
	 */
	public void send_sm(String ordercode,String tplCode);
	
	/**
	 * 改签游玩时间
	 * @param orderCode 子订单号
	 * @return
	 */
	public ReqVO modifyOccDate(String childOrderCode,String newDate);
}
