/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午2:04:17
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午2:04:17 
 * @email:361801580@qq.com 
 */
public interface ScenicSpotDao {

	public boolean save(ScenicSpotDao scenicSpot);
	
	public boolean update(ScenicSpotDao scenicSpot);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public ScenicSpotDao findById(Long id);
	
	public List<ScenicSpotDao> findAll();
	
	public List<ScenicSpotDao> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("search")String search);

}
