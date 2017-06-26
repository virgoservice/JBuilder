/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午5:22:07
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

import com.ramostear.jbuilder.dao.TicketGroupDao;
import com.ramostear.jbuilder.entity.TicketGroup;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.TicketGroupService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午5:22:07 
 * @email:361801580@qq.com 
 */
@Service("ticketGroupService")
public class TicketGroupServiceImpl implements TicketGroupService {

	@Autowired
	private TicketGroupDao tdao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketGroupService#add(com.ramostear.jbuilder.entity.TicketGroup)
	 */
	@Override
	public boolean add(TicketGroup ticketGroup) {
		return this.tdao.save(ticketGroup);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketGroupService#update(com.ramostear.jbuilder.entity.TicketGroup)
	 */
	@Override
	public boolean update(TicketGroup ticketGroup) {
		return this.tdao.update(ticketGroup);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketGroupService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		return this.tdao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketGroupService#findById(java.lang.Long)
	 */
	@Override
	public TicketGroup findById(Long id) {
		return this.tdao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.TicketGroupService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<TicketGroup> findByPage(int offset, int size,
			String orderBy, boolean order, String search) {
		
		List<TicketGroup> list = this.tdao.findByPage((offset-1)*size, size, orderBy, order,search);
		Long totalSize = this.tdao.size();
		return new PageDto<TicketGroup>(totalSize,offset,size,list);
	}

	@Override
	public List<TicketGroup> findAll() {
		return tdao.findAll();
	}

}
