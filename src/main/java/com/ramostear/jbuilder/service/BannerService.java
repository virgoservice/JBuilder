/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 上午10:00:22
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Banner;
import com.ramostear.jbuilder.kit.PageDto;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月5日 下午5:38:36 
* @email:361801580@qq.com
 */
public interface BannerService {

	public Banner add(Banner banner);
	
	public Banner update(Banner banner);
	
	public boolean delete(Long id);
	
	public Banner findById(Long id);
	
	public Banner findByName(String name);
	
	public PageDto<Banner> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("oderBy")String orderBy,@Param("order") boolean order,@Param("search")Map search);
}
