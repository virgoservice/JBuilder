/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 上午9:31:39
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Friendlink;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月5日 上午9:31:39 
 * @email:361801580@qq.com 
 */
public interface FriendlinkDao {
	
	public void save(Friendlink link);
	
	public void update(Friendlink link);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public Friendlink findById(Long id);
	
	public Friendlink findByName(String linkname);
	
	public List<Friendlink> findAll();
	
	public List<Friendlink> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("search")String search);
	
	
}
