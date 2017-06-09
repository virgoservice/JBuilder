/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午4:11:59
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import com.ramostear.jbuilder.entity.Site;

/** 
 * @Desc: () 
 * @author: 张瑞
 * @date: 2017年5月5日 下午15:22:13 
 * @email: nishbc@163.com 
 */
public interface SiteService {
	
	/**
	 * 根据id查询站点
	 * @param id
	 * @return
	 */
	public Site findById(Long id);
	
	
	/**
	 * 更新站点信息
	 * @param manager
	 * @param roleIds
	 * @return
	 */
	public void update(Site site);
	
}
