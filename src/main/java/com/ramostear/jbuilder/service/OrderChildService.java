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

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.kit.PageDto;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午3:45:28 
 * @email:361801580@qq.com 
 */
public interface OrderChildService {
	
	public OrderChild findByOrderCode(String orderCode);

	public boolean update(OrderChild orderChild);
	
	public boolean delete(Long cid);
	
	public OrderChild findById(Long cid);
	
	//根据订单id查询所有子订单
	public List<OrderChild> getAllByOid(Long oid);
	
	//查询待检票列表
	public PageDto<OrderChild> findCheckByPage(
			@Param("offset")int offset,
			@Param("size")int size,
			@Param("oderBy")String orderBy,
			@Param("order") boolean order,
			@Param("orderCode")String orderCode,
			@Param("hcode")String hcode,
			@Param("linkMobile")String linkMobile,
			@Param("status")String status);

}
