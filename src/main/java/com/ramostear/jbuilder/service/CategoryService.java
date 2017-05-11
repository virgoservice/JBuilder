/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月9日 上午10:14:00
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Category;
import com.ramostear.jbuilder.kit.PageDto;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月9日 上午10:14:00 
 * @email:361801580@qq.com 
 */
public interface CategoryService {
	public Category add(Category category);
	
	public Category update(Category category);
	
	public boolean delete(Long id);
	
	public Category findByName(String name);
	
	public String findParentByTree();
	/**
	 * 查询栏目父节点
	 * @return
	 */
	public List<Map<String, String>> findParent();
	
	public PageDto<Category> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("oderBy")String orderBy,@Param("order") boolean order,@Param("search")String search);

}
