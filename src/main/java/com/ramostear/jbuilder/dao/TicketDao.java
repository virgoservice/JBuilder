/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午2:24:22
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Ticket;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午2:24:22 
 * @email:361801580@qq.com 
 */
public interface TicketDao {
	
	public boolean save(Ticket ticket);
	
	public boolean update(Ticket ticket);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public Long sizeMember(Long groupId);
	
	public Long sizeSearch(String name);
	
	public Ticket findById(Long id);

	public List<Ticket> findAll();

	public List<Ticket> findByPage(
			@Param("offset") int offset,
			@Param("size") int size,
			@Param("orderBy") String orderBy,
			@Param("order") boolean order
			);
	

	
	public List<Ticket> findByPageMember(
			@Param("offset") int offset,
			@Param("size") int size,
			@Param("orderBy") String orderBy,
			@Param("order") boolean order,
			@Param("groupId") Long groupId
			);
	
	public List<Ticket> findByPageSearch(
			@Param("offset") int offset,
			@Param("size") int size,
			@Param("orderBy") String orderBy,
			@Param("order") boolean order,
			@Param("name") String name
			);

	public List<Ticket> findPageByCond(
			@Param("offset") int offset,
			@Param("size") int size,
			@Param("orderBy") String orderBy,
			@Param("order") boolean order, 
			@Param("goodsCode") String goodsCode,
			@Param("status") int status,
			@Param("ticketName") String ticketName,
			@Param("scenicName") String scenicName
			);

	public Long getTotalByCond(
			@Param("goodsCode") String goodsCode,
			@Param("status") int status,
			@Param("ticketName") String ticketName,
			@Param("scenicName") String scenicName);

	public List<Ticket> findPageByGroup(
			@Param("offset") int offset,
			@Param("size") int size,
			@Param("orderBy") String orderBy,
			@Param("order") boolean order,
			@Param("groupId") int groupId);
	
	public Long getTotalByGroup(
			@Param("groupId") int groupId);

}
