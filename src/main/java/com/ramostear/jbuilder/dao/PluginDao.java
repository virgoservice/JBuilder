/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 下午5:44:44
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Plugin;

/**
 * @description: 插件实体持久化接口
 * @author: vabo
 * @version:
 * @Datetime:2017年5月5日
 * @Email:
 */
public interface PluginDao {

	public void save(Plugin plugin);

	public void update(Plugin plugin);

	public void delete(Long id);

	public void deleteBatch(@Param("ids") Long... ids);

	public Plugin findById(Long id);

	public List<Plugin> listAll();

	public List<Plugin> listByConditions(
			@Param("provider") String provider,
			@Param("status") Integer status,
			@Param("offset") int offset,
			@Param("pageSize") int pageSize,
			@Param("orderBy") String orderBy,
			@Param("isAsc") boolean isAsc);

	public Long getTotalByConditions(@Param("provider") String provider, @Param("status") Integer status);

}
