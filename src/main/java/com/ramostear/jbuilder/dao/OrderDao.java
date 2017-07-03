/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月12日 下午2:06:24
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Order;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月12日 下午2:06:24 
 * @email:361801580@qq.com 
 */
public interface OrderDao {

	public boolean save(Order order);
	
	public boolean update(Order order);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public Order findById(Long id);
	
	public Order findByIdAndUid(@Param("id")Long id,@Param("uid")Long uid);
	
	public Order findByOrderCode(String orderCode);
	
	public List<Order> findAll();
	
	public List<Order> findByPageByUid(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("uid")Long uid,@Param("payStatus")String payStatus);

	public List<Order> findByPage(
			@Param("offset")int offset,
			@Param("size")int size,
			@Param("orderBy")String orderBy,
			@Param("order")boolean order,
			@Param("orderCode")String orderCode, 
			@Param("linkMobile")String linkMobile,
			@Param("ticketType")String ticketType, 
			@Param("payStatus")String payStatus);

}
