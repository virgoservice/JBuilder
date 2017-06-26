/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月16日 上午10:17:50
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.ramostear.jbuilder.entity.OrderLog;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月16日 上午10:17:50 
 * @email:361801580@qq.com 
 */
public interface OrderLogDao {

	public boolean save(OrderLog log);
	
	public boolean update(OrderLog category);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public OrderLog findById(Long id);
	
	public OrderLog findByName(String name);
	
	public List<OrderLog> findAll();
	
	public List<OrderLog> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("search")String search);

}
