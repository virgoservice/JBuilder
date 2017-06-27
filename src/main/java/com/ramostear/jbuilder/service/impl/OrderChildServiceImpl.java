/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午3:49:03
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

import com.ramostear.jbuilder.dao.OrderChildDao;
import com.ramostear.jbuilder.entity.OrderChild;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.OrderChildService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午3:49:03 
 * @email:361801580@qq.com 
 */
@Service("orderChildService")
public class OrderChildServiceImpl implements OrderChildService {

	@Autowired
	private OrderChildDao odao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderChildService#update(com.ramostear.jbuilder.entity.OrderChild)
	 */
	@Override
	public boolean update(OrderChild orderChild) {
		return this.odao.update(orderChild);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.OrderChildService#getAllByOid(java.lang.Long)
	 */
	@Override
	public List<OrderChild> getAllByOid(Long oid) {
		return this.odao.getAllByOid(oid);
	}

	@Override
	public OrderChild findByOrderCode(String orderCode) {
		return this.odao.findByOrderCode(orderCode);
	}

	@Override
	public OrderChild findById(Long cid) {
		return this.odao.findById(cid);
	}

	@Override
	public PageDto<OrderChild> findCheckByPage(int offset, int size,
			String orderBy, boolean order, String orderCode,String hcode,String linkMobile,String status) {
		List<OrderChild> list = this.odao.findCheckByPage((offset-1)*size, size, orderBy, order,orderCode,hcode,linkMobile,status);
		Long totalSize = this.odao.checkPageSize();
		return new PageDto<OrderChild>(totalSize,offset,size,list);
	}

}
