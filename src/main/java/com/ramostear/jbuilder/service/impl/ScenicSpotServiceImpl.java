/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 下午5:03:19
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

import com.ramostear.jbuilder.dao.ScenicSpotDao;
import com.ramostear.jbuilder.entity.ScenicSpot;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.ScenicSpotService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 下午5:03:19 
 * @email:361801580@qq.com 
 */
@Service("scenicSpotService")
public class ScenicSpotServiceImpl implements ScenicSpotService {

	@Autowired
	private ScenicSpotDao sdao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ScenicSpotService#add(com.ramostear.jbuilder.entity.ScenicSpot)
	 */
	@Override
	public boolean add(ScenicSpot scenicSpot) {
		return sdao.save(scenicSpot);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ScenicSpotService#update(com.ramostear.jbuilder.entity.ScenicSpot)
	 */
	@Override
	public boolean update(ScenicSpot scenicSpot) {
		return this.sdao.update(scenicSpot);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ScenicSpotService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		return this.sdao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ScenicSpotService#findById(java.lang.Long)
	 */
	@Override
	public ScenicSpot findById(Long id) {
		return this.sdao.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ScenicSpotService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<ScenicSpot> findByPage(int offset, int size, String orderBy,
			boolean order, String search) {
		List<ScenicSpot> list = this.sdao.findByPage((offset-1)*size, size, orderBy, order,search);
		Long totalSize = this.sdao.size();
		return new PageDto<ScenicSpot>(totalSize,offset,size,list);
	}

	@Override
	public List<ScenicSpot> findAll() {
		return sdao.findAll();
	}

	@Override
	public int containTickets(Long id) {
		return sdao.containTickets(id);
	}

}
