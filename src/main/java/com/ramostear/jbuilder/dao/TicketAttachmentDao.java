/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月29日 上午10:52:01
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.TicketAttachment;

/**
 * @description:
 * @author: vabo
 * @version:
 * @Datetime:2017年6月29日
 * @Email:
 */
public interface TicketAttachmentDao {

	public void save(TicketAttachment ticketAttachment);

	public void delete(Long id);

	public void update(TicketAttachment ticketAttachment);

	public TicketAttachment findById(Long id);

	public List<TicketAttachment> listAll();

	public Integer getTotal();

	public List<TicketAttachment> listByPage(@Param("ticketId") Long ticketId, @Param("attachmentId") Long attachmentId,
			@Param("attachmentUrl") String attachmenUrl, @Param("useof") Integer useof,
			@Param("orderBy") String orderBy, @Param("order") boolean order, @Param("offset") int offset,
			@Param("pageSize") int pageSize);

	public Integer getCount(@Param("ticketId") Long ticketId, @Param("attachmentId") Long attachmentId,
			@Param("attachmentUrl") String attachmenUrl, @Param("useof") Integer useof);

}
