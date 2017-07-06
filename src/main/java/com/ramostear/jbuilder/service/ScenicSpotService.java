/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午4:54:57
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.ramostear.jbuilder.entity.ScenicSpot;
import com.ramostear.jbuilder.kit.PageDto;

/**
 * @Desc: ()
 * @author: 赖生龙
 * @date: 2017年6月13日 下午4:54:57
 * @email:361801580@qq.com
 */
public interface ScenicSpotService {

	public boolean add(ScenicSpot scenicSpot);

	public boolean update(ScenicSpot scenicSpot);

	public boolean delete(Long id);

	public ScenicSpot findById(Long id);

	public List<ScenicSpot> findAll();

	public PageDto<ScenicSpot> findByPage(@Param("offset") int offset, @Param("size") int size,
			@Param("oderBy") String orderBy, @Param("order") boolean order, @Param("search") String search);

	/**
	 * 指定景区包含的ticket数量
	 * @param id
	 * @return
	 */
	public int containTickets(Long id);

}
