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
import com.ramostear.jbuilder.kit.MemberPageDto;
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
	
	@Override
	public List<Ticket> findAll() {
		return dao.findAll();
	}

	@Override
	public PageDto<Ticket> findByPage(int offset, int size, String orderBy, boolean order) {
		long total = dao.size();
		int pageNo = offset;
		offset = ((pageNo -1 >= 0)? pageNo-1 : pageNo) * size;
		List<Ticket> ticketList = dao.findByPage(offset, size, orderBy, order);
		PageDto<Ticket> pageDto = new PageDto<Ticket>(total, pageNo, size, ticketList);
		return pageDto;
	}

	@Override
	public PageDto<Ticket> findPageByCond(int offset, int size, String orderBy, boolean order, String goodsCode,
			int status, String ticketName, String scenicName) {
		long total = dao.getTotalByCond(goodsCode, status, ticketName, scenicName);
		int pageNo = offset;
		offset = ((pageNo -1 >= 0)? pageNo-1 : pageNo) * size;
		List<Ticket> ticketList = dao.findPageByCond(offset, size, orderBy, order, goodsCode, status, ticketName, scenicName);
		PageDto<Ticket> pageDto = new PageDto<Ticket>(total, pageNo, size, ticketList);
		return pageDto;
	}

	@Override
	public PageDto<Ticket> findPageByGroup(int offset, int size, String orderBy, boolean order, int groupId) {
		long total = dao.getTotalByGroup(groupId);
		int pageNo = offset;
		offset = ((pageNo -1 >= 0)? pageNo-1 : pageNo) * size;
		List<Ticket> ticketList = dao.findPageByGroup(offset, size, orderBy, order, groupId);
		PageDto<Ticket> pageDto = new PageDto<Ticket>(total, pageNo, size, ticketList);
		return pageDto;
	}

	@Override
	public MemberPageDto<Ticket> findByPageMember(int offset, int size,
			String orderBy, boolean order,Long groupId) {
		List<Ticket> list = this.dao.findByPageMember((offset-1)*size, size, orderBy, order,groupId);
		Long totalSize = this.dao.sizeMember(groupId);
		return new MemberPageDto<Ticket>(totalSize,offset,size,list);
	}

	@Override
	public MemberPageDto<Ticket> findByPageSearch(int offset, int size,
			String orderBy, boolean order, String name) {
		List<Ticket> list = this.dao.findByPageSearch((offset-1)*size, size, orderBy, order,name);
		Long totalSize = (long) list.size();//this.dao.sizeSearch(name);
		return new MemberPageDto<Ticket>(totalSize,offset,size,list);
	}

}
