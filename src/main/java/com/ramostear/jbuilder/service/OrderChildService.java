/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午3:45:28
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.List;

import com.ramostear.jbuilder.entity.OrderChild;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午3:45:28 
 * @email:361801580@qq.com 
 */
public interface OrderChildService {

	public boolean update(OrderChild orderChild);
	//根据订单id查询所有子订单
	public List<OrderChild> getAllByOid(Long oid);
}
