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

import com.ramostear.jbuilder.entity.Article;
import com.ramostear.jbuilder.kit.PageDto;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月9日 下午3:25:29 
* @email:361801580@qq.com
 */
public interface ArticleService {
	public Article add(Article article);
	
	public Article update(Article article);
	
	public boolean delete(Long id);
	
	public Article findById(Long id);
	
	public Article findByName(String name);
	
	public PageDto<Article> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("oderBy")String orderBy,@Param("order") boolean order,@Param("search")String search);

	public List<Map<String, String>> getStatusCount();
}
