/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午5:28:55
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.dao;

import com.ramostear.jbuilder.entity.Site;

/** 
 * @Desc: () 
 * @author: 张瑞
 * @date: 2017年5月5日 下午15:23:03 
 * @email:2411685663@163.com
 */
public interface SiteDao {

	public void update(Site site);
	
	public Site findById(Long id);
	
}
