/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月22日 下午2:28:19
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
import com.ramostear.jbuilder.dao.CheckTicketDao;
import com.ramostear.jbuilder.entity.CheckTicket;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.CheckTicketService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月22日 下午2:28:19 
 * @email:361801580@qq.com 
 */
@Service("checkTicketService")
public class CheckTicketServiceImpl implements CheckTicketService {

	@Autowired
	private CheckTicketDao cdao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CheckTicketService#add(com.ramostear.jbuilder.entity.CheckTicket)
	 */
	@Override
	public CheckTicket add(CheckTicket checkTicket) {
		this.cdao.save(checkTicket);
		return checkTicket;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CheckTicketService#update(com.ramostear.jbuilder.entity.CheckTicket)
	 */
	@Override
	public CheckTicket update(CheckTicket checkTicket) {
		this.cdao.update(checkTicket);
		return checkTicket;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CheckTicketService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		
		return this.cdao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CheckTicketService#findById(java.lang.Long)
	 */
	@Override
	public CheckTicket findById(Long id) {
		return this.cdao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CheckTicketService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<CheckTicket> findByPage(int offset, int size,
			String orderBy, boolean order, String search) {
		List<CheckTicket> list = this.cdao.findByPage((offset-1)*size, size, orderBy, order,search);
		Long totalSize = this.cdao.size();
		return new PageDto<CheckTicket>(totalSize,offset,size,list);
	}

}
