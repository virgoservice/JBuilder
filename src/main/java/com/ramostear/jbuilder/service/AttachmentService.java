/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 下午4:32:41
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Attachment;

/**
 * @description: 附件业务接口
 * @author: vabo
 * @version:
 * @Datetime:2017年5月5日
 * @Email:
 */
public interface AttachmentService {

	public void save(Attachment attachment);

	public void update(Attachment attachment);

	public void delete(Long id);

	public void deleteBatch(@Param("ids") Long... ids);

	public Attachment findById(Long id);

	public Attachment findByUrl(String url);

	public List<Attachment> listAll();

	public List<Attachment> listByConditions(@Param("type") String type,
			@Param("createTimeBegin") Date createTimeBegin,
			@Param("createTimeEnd") Date createTimeEnd,
			@Param("offset") int offset,
			@Param("pageSize") int pageSize,
			@Param("orderBy") String orderBy,
			@Param("isAsc") boolean isAsc);

	public Long getTotalByConditions(@Param("type") String type,
			@Param("createTimeBegin") Date createTimeBegin,
			@Param("createTimeEnd") Date createTimeEnd);

}
