/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月9日 下午3:02:43
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

import java.util.Date;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月9日 下午3:02:43 
 * @email:361801580@qq.com 
 */
public class Article {

	private Long id;
	private String author;
	private Integer status;//-1 删除 ,0草稿,1保存,2发布
	private Long categoryId;
	private String categoryName;
	private String content;
	private String contentCode;
	private Date createTime;
	private Date modifyTime;
	private String intro;
	private Integer  showOrder;
	private String tag;
	private String title;
	private String type;
	private String cover;
	private String description;
	private String keyword;
	
	public Article() {
		super();
	}

	public Article(Long id, String author, Integer status, Long categoryId,
			String categoryName, String content, String contentCode,
			Date createTime, Date modifyTime, String intro, Integer showOrder,
			String tag, String title, String type, String cover,
			String description, String keyword) {
		super();
		this.id = id;
		this.author = author;
		this.status = status;
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.content = content;
		this.contentCode = contentCode;
		this.createTime = createTime;
		this.modifyTime = modifyTime;
		this.intro = intro;
		this.showOrder = showOrder;
		this.tag = tag;
		this.title = title;
		this.type = type;
		this.cover = cover;
		this.description = description;
		this.keyword = keyword;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContentCode() {
		return contentCode;
	}

	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Integer getShowOrder() {
		return showOrder;
	}

	public void setShowOrder(Integer showOrder) {
		this.showOrder = showOrder;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "{'id':'" + id + "', 'author':'" + author + "', 'status':'"
				+ status + "', 'categoryId':'" + categoryId
				+ "', 'categoryName':'" + categoryName + "', 'content':'"
				+ content + "', 'contentCode':'" + contentCode
				+ "', 'createTime':'" + createTime + "', 'modifyTime':'"
				+ modifyTime + "', 'intro':'" + intro + "', 'showOrder':'"
				+ showOrder + "', 'tag':'" + tag + "', 'title':'" + title
				+ "', 'type':'" + type + "', 'cover':'" + cover
				+ "', 'description':'" + description + "', 'keyword':'"
				+ keyword + "'}  ";
	}
}
