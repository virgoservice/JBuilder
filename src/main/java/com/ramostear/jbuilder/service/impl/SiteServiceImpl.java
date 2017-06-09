/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午4:13:40
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.SiteDao;
import com.ramostear.jbuilder.entity.Site;
import com.ramostear.jbuilder.service.SiteService;

/** 
 * @Desc: () 
 * @author: 张瑞
 * @date: 2017年5月5日 下午15:22:13 
 * @email: nishbc@163.com 
 */
@Service("siteService")
public class SiteServiceImpl implements SiteService{
	
	@Autowired
	private SiteDao siteDao;

	@Override
	public Site findById(Long id) {
		return siteDao.findById(id);
	}

	@Override
	public void update(Site site) {
		siteDao.update(site);
	}

}
