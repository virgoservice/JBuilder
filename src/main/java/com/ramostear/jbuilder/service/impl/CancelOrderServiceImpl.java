/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 上午11:51:34
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.CancelOrderDao;
import com.ramostear.jbuilder.entity.CancelOrder;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.CancelOrderService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 上午11:51:34 
 * @email:361801580@qq.com 
 */
@Service("cancelOrderService")
public class CancelOrderServiceImpl implements CancelOrderService {

	@Autowired
	private CancelOrderDao cdao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CancelOrderService#save(com.ramostear.jbuilder.entity.CancelOrder)
	 */
	@Override
	public boolean save(CancelOrder corder) {
		corder.setCancelDate(new Date());
		return cdao.save(corder);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CancelOrderService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		return cdao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CancelOrderService#update(com.ramostear.jbuilder.entity.CancelOrder)
	 */
	@Override
	public boolean update(CancelOrder corder) {
		return cdao.update(corder);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CancelOrderService#size()
	 */
	@Override
	public Long size() {
		return cdao.size();
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CancelOrderService#findById(java.lang.Long)
	 */
	@Override
	public CancelOrder findById(Long id) {
		return cdao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CancelOrderService#findAll()
	 */
	@Override
	public List<CancelOrder> findAll() {
		return cdao.findAll();
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.CancelOrderService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<CancelOrder> findByPage(int offset, int size, String orderBy,
			boolean order, String status,String orderCode,String hcode) {
		List<CancelOrder> list = cdao.findByPage((offset-1)*size, size, orderBy, order,status,orderCode,hcode);
		Long totalSize = cdao.size();
		return new PageDto<CancelOrder>(totalSize,offset,size,list);
	}

	@Override
	public CancelOrder findByRetreatBatchNo(String retreatBatchNo) {
		return this.cdao.findByRetreatBatchNo(retreatBatchNo);
	}

	@Override
	public Long findCancelResult(Long id) {
		return this.cdao.findCancelResult(id);
	}

	@Override
	public List<CancelOrder> findByCancelOrderId(Long cid) {
		return this.cdao.findByCancelOrderId(cid);
	}


}
