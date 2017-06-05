/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月9日 下午3:26:18
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.ArticleDao;
import com.ramostear.jbuilder.entity.Article;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.ArticleService;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月9日 下午3:26:18 
 * @email:361801580@qq.com 
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDao articleDao;
	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ArticleService#add(com.ramostear.jbuilder.entity.Article)
	 */
	@Override
	public Article add(Article a) {
		if(a.getStatus()!=null&&a.getStatus()==2){ //2已发布，添加发布日期
			a.setCreateTime(new Date());
		}
		articleDao.save(a);
		return a;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ArticleService#update(com.ramostear.jbuilder.entity.Article)
	 */
	@Override
	public Article update(Article a) {
		a.setModifyTime(new Date());
		articleDao.update(a);
		return a;
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ArticleService#delete(java.lang.Long)
	 */
	@Override
	public boolean delete(Long id) {
		
		return articleDao.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ArticleService#findByName(java.lang.String)
	 */
	@Override
	public Article findByName(String name) {
		
		return articleDao.findByName(name);
	}

	/* (non-Javadoc)
	 * @see com.ramostear.jbuilder.service.ArticleService#findByPage(int, int, java.lang.String, boolean, java.lang.String)
	 */
	@Override
	public PageDto<Article> findByPage(int offset, int size, String orderBy,boolean order, String search) {
		List<Article> list = articleDao.findByPage((offset-1)*size, size, orderBy, order,search);
		Long totalSize = articleDao.size();
		return new PageDto<Article>(totalSize,offset,size,list);
	}

	@Override
	public Article findById(Long id) {
		return articleDao.findById(id);
	}

	@Override
	public List<Map<String, String>> getStatusCount() {
		return this.articleDao.getStatusCount();
	}

}
