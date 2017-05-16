/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 下午6:01:25
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.PluginDao;
import com.ramostear.jbuilder.entity.Plugin;
import com.ramostear.jbuilder.service.PluginService;

/**
 * @description: 
 * @author: vabo
 * @version:
 * @Datetime:2017年5月5日
 * @Email:
 */
@Service("pluginService")
public class PluginServiceImpl implements PluginService{

	@Autowired
	private PluginDao pluginDao;

	@Override
	public void save(Plugin plugin) {
		pluginDao.save(plugin);
	}

	@Override
	public void update(Plugin plugin) {
		pluginDao.update(plugin);
	}

	@Override
	public void delete(Long id) {
		pluginDao.delete(id);
	}

	@Override
	public void deleteBatch(Long... ids) {
		pluginDao.deleteBatch(ids);
	}

	@Override
	public Plugin findById(Long id) {
		return pluginDao.findById(id);
	}

	@Override
	public List<Plugin> listAll() {
		return pluginDao.listAll();
	}

	@Override
	public List<Plugin> listByConditions(String provider, Integer status, int offset, int pageSize, String orderBy, boolean isAsc) {
		return pluginDao.listByConditions(provider, status, offset, pageSize, orderBy, isAsc);
	}

	@Override
	public Long getTotalByConditions(String provider, Integer status) {
		return pluginDao.getTotalByConditions(provider, status);
	}

}
