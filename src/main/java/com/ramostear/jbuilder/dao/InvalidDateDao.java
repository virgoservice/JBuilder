/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月12日 下午3:53:43
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.ramostear.jbuilder.entity.InvalidDate;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月12日 下午3:53:43 
 * @email:361801580@qq.com 
 */
public interface InvalidDateDao {

	public boolean save(InvalidDate invalidDate);
	
	public boolean update(InvalidDate invalidDate);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public InvalidDate findById(Long id);
	
	public List<InvalidDate> findByTId(Long tid);
	
	public List<InvalidDate> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order);

}
