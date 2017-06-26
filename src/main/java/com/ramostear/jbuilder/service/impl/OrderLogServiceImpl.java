/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月16日 上午10:35:38
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

import com.ramostear.jbuilder.dao.OrderLogDao;
import com.ramostear.jbuilder.entity.OrderLog;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.OrderLogService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月16日 上午10:35:38 
 * @email:361801580@qq.com 
 */
@Service("orderLog")
public class OrderLogServiceImpl implements OrderLogService {

	@Autowired
	private OrderLogDao odao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderLog#add(com.ramostear.jbuilder.service.OrderLog)
	 */
	@Override
	public boolean add(OrderLog log) {
		return this.odao.save(log);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderLog#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<OrderLog> findByPage(int offset, int size, String orderBy,
			boolean order, String search) {
		List<OrderLog> list = this.odao.findByPage((offset-1)*size, size, orderBy, order,search);
		Long totalSize = this.odao.size();
		return new PageDto<OrderLog>(totalSize,offset,size,list);
	}

}
