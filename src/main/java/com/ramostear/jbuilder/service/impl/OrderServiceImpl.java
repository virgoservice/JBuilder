/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月12日 下午5:17:09
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.List;

import com.ramostear.jbuilder.entity.Order;
import com.ramostear.jbuilder.service.OrderService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月12日 下午5:17:09 
 * @email:361801580@qq.com 
 */
public class OrderServiceImpl implements OrderService {

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#save(com.ramostear.jbuilder.entity.Order)
	 */
	@Override
	public boolean save(Order order) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#update(com.ramostear.jbuilder.entity.Order)
	 */
	@Override
	public boolean update(Order order) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#size()
	 */
	@Override
	public Long size() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#findById(java.lang.Long)
	 */
	@Override
	public Order findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#findByOrderCode(java.lang.String)
	 */
	@Override
	public Order findByOrderCode(String orderCode) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#findAll()
	 */
	@Override
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public List<Order> findByPage(int offset, int size, String orderBy,
			boolean order, String orderCode) {
		// TODO Auto-generated method stub
		return null;
	}

}
