/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 下午4:32:54
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.AttachmentDao;
import com.ramostear.jbuilder.entity.Attachment;
import com.ramostear.jbuilder.service.AttachmentService;

/**
 * @description:
 * @author: vabo
 * @version:
 * @Datetime:2017年5月5日
 * @Email:
 */
@Service("attachmentService")
public class AttachmentServiceImpl implements AttachmentService {

	@Autowired
	private AttachmentDao attachmentDao;

	@Override
	public void save(Attachment attachment) {
		attachmentDao.save(attachment);
	}

	@Override
	public void update(Attachment attachment) {
		attachmentDao.update(attachment);
	}

	@Override
	public void delete(Long id) {
		attachmentDao.delete(id);
	}

	@Override
	public void deleteBatch(Long... ids) {
		attachmentDao.deleteBatch(ids);
	}

	@Override
	public Attachment findById(Long id) {
		return attachmentDao.findById(id);
	}

	@Override
	public Attachment findByUrl(String url) {
		return attachmentDao.findByUrl(url);
	}

	@Override
	public List<Attachment> listAll() {
		return attachmentDao.listAll();
	}

	@Override
	public List<Attachment> listByConditions(String type, Date createTimeBegin, Date createTimeEnd, int offset, int pageSize, String orderBy,
			boolean isAsc) {
		return attachmentDao.listByConditions(type, createTimeBegin, createTimeEnd, offset, pageSize, orderBy, isAsc);
	}

	@Override
	public Long getTotalByConditions(String type, Date createTimeBegin, Date createTimeEnd) {
		return attachmentDao.getTotalByConditions(type, createTimeBegin, createTimeEnd);
	}

}
