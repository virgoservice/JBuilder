/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月29日 上午11:34:04
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.TicketAttachmentDao;
import com.ramostear.jbuilder.entity.TicketAttachment;
import com.ramostear.jbuilder.service.TicketAttachmentService;

/**
 * @description:
 * @author: vabo
 * @version:
 * @Datetime:2017年6月29日
 * @Email:
 */
@Service("ticketAttachmentService")
public class TicketAttachmentServiceImpl implements TicketAttachmentService {

	@Autowired
	private TicketAttachmentDao ticketAttachmentDao;

	@Override
	public void save(TicketAttachment ticketAttachment) {
		ticketAttachmentDao.save(ticketAttachment);
	}

	@Override
	public void delete(Long id) {
		ticketAttachmentDao.delete(id);
	}

	@Override
	public void update(TicketAttachment ticketAttachment) {
		ticketAttachmentDao.update(ticketAttachment);
	}

	@Override
	public TicketAttachment findById(Long id) {
		return ticketAttachmentDao.findById(id);
	}

	@Override
	public List<TicketAttachment> listAll() {
		return ticketAttachmentDao.listAll();
	}

	@Override
	public Integer getTotal() {
		return ticketAttachmentDao.getTotal();
	}

	@Override
	public List<TicketAttachment> listByPage(Long ticketId, Long attachmentId, String attachmenUrl, Integer useof,
			String orderBy, boolean order, int offset, int pageSize) {
		return ticketAttachmentDao.listByPage(ticketId, attachmentId, attachmenUrl, useof, orderBy, order, offset,
				pageSize);
	}

	@Override
	public Integer getCount(Long ticketId, Long attachmentId, String attachmenUrl, Integer useof) {
		return ticketAttachmentDao.getCount(ticketId, attachmentId, attachmenUrl, useof);
	}

}
