/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 上午11:30:46
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.CancelOrder;
import com.ramostear.jbuilder.kit.PageDto;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 上午11:30:46 
 * @email:361801580@qq.com 
 */
public interface CancelOrderService {

	public boolean save(CancelOrder corder);
	
	public boolean delete(Long id);
	
	public boolean update(CancelOrder corder);
	
	public Long size();
	
	public Long findCancelResult(Long id);
	
	public CancelOrder findById(Long id);
	
	public List<CancelOrder> findByCancelOrderId(Long cid);
	
	public CancelOrder findByRetreatBatchNo(String retreatBatchNo);
	
	public List<CancelOrder> findAll();
	
	public PageDto<CancelOrder> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,
			@Param("order")boolean order,@Param("status")String status,
			@Param("orderCode")String orderCode,@Param("ziyoubaoCheckNo")String ziyoubaoCheckNo);

}
