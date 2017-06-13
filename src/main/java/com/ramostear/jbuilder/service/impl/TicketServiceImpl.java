/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午5:30:48
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

import com.ramostear.jbuilder.dao.TicketDao;
import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.TicketService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午5:30:48 
 * @email:361801580@qq.com 
 */
@Service("ticketService")
public class TicketServiceImpl implements TicketService {

	@Autowired
	private TicketDao dao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketService#add(com.ramostear.jbuilder.entity.Ticket)
	 */
	@Override
	public boolean add(Ticket ticket) {
		return this.dao.save(ticket);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketService#update(com.ramostear.jbuilder.entity.Ticket)
	 */
	@Override
	public boolean update(Ticket ticket) {
		return this.dao.update(ticket);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		return this.dao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketService#findById(java.lang.Long)
	 */
	@Override
	public Ticket findById(Long id) {
		return this.dao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<Ticket> findByPage(int offset, int size, String orderBy,
			boolean order, String search) {
		
		List<Ticket> list = this.dao.findByPage((offset-1)*size, size, orderBy, order,search);
		Long totalSize = this.dao.size();
		return new PageDto<Ticket>(totalSize,offset,size,list);
	}

}
