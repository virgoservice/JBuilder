/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 下午4:32:04
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

import java.util.Date;

/**
 * @description: 附件实体类
 * @author: vabo
 * @version:
 * @Datetime:2017年5月5日
 * @Email:
 */
public class Attachment {

	private Long id;

	private String name;

	private String title;

	private Double size;

	private String type;

	private String url;

	private Date createTime;

	private String description;

	public Attachment() {
	}

	public Attachment(Long id, String name, String title, Double size, String type, String url, Date createTime,
			String description) {
		this.id = id;
		this.name = name;
		this.title = title;
		this.size = size;
		this.type = type;
		this.url = url;
		this.createTime = createTime;
		this.description = description;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Double getSize() {
		return size;
	}

	public void setSize(Double size) {
		this.size = size;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Attachment [id=" + id + ", name=" + name + ", title=" + title + ", size=" + size + ", type=" + type
				+ ", url=" + url + ", createTime=" + createTime + ", description=" + description + "]";
	}

}
