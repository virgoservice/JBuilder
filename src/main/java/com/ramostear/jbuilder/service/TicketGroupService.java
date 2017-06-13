/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午5:19:51
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;
import org.apache.ibatis.annotations.Param;
import com.ramostear.jbuilder.entity.TicketGroup;
import com.ramostear.jbuilder.kit.PageDto;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午5:19:51 
 * @email:361801580@qq.com 
 */
public interface TicketGroupService {
	
	public boolean add(TicketGroup ticketGroup);
	
	public boolean update(TicketGroup ticketGroup);
	
	public boolean delete(Long id);
	
	public TicketGroup findById(Long id);
	
	public PageDto<TicketGroup> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("oderBy")String orderBy,@Param("order") boolean order,@Param("search")String search);

}
