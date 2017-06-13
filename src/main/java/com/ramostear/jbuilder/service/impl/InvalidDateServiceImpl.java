/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 上午11:13:55
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ramostear.jbuilder.dao.InvalidDateDao;
import com.ramostear.jbuilder.entity.InvalidDate;
import com.ramostear.jbuilder.service.InvalidDateService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 上午11:13:55 
 * @email:361801580@qq.com 
 */
public class InvalidDateServiceImpl implements InvalidDateService {

	@Autowired
	private InvalidDateDao idao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.InvaliddateService#save(com.ramostear.jbuilder.entity.InvalidDate)
	 */
	@Override
	public boolean save(InvalidDate date) {
		// TODO Auto-generated method stub
		return idao.save(date);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.InvaliddateService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		// TODO Auto-generated method stub
		return idao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.InvaliddateService#update(com.ramostear.jbuilder.entity.InvalidDate)
	 */
	@Override
	public boolean update(InvalidDate date) {
		// TODO Auto-generated method stub
		return idao.update(date);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.InvaliddateService#findByTId(java.lang.Long)
	 */
	@Override
	public List<InvalidDate> findByTId(Long ticketId) {
		List<InvalidDate> list = idao.findByTId(ticketId);
		return list;
	}

}
