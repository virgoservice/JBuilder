/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月4日 下午5:55:41
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
 * @date: 2017年5月4日 下午5:55:41 
 * @email:361801580@qq.com 
 */
public class Friendlink {
	
	private Long id;
	private String name;
	private String url;
	private String logo;
	private Integer showOrder;
	private Date createTime;
	
	
	public Friendlink(){}

	public Friendlink(Long id, String name, String url, String logo,
			Integer showOrder, Date createTime) {
		super();
		this.id = id;
		this.name = name;
		this.url = url;
		this.logo = logo;
		this.showOrder = showOrder;
		this.createTime = createTime;
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


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public String getLogo() {
		return logo;
	}


	public void setLogo(String logo) {
		this.logo = logo;
	}


	public Integer getShowOrder() {
		return showOrder;
	}


	public void setShowOrder(Integer showOrder) {
		this.showOrder = showOrder;
	}


	public Date getCreateTime() {
		return createTime;
	}


	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	

	
}
