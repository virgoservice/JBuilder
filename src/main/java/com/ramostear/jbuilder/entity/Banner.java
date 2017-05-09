/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月4日 下午6:02:38
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年5月4日 下午6:02:38 
 * @email:361801580@qq.com 
 */
public class Banner {
	
	private Long id;
	private String name;
	private String title;
	private String image;
	private String alt;
	private Integer showOrder;
	private Integer status;
	
	public Banner(){}
	
	public Banner(Long id, String name, String title, String image,
			String alt, Integer showOrder, Integer status) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.image = image;
		this.alt = alt;
		this.showOrder = showOrder;
		this.status = status;
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

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public Integer getShowOrder() {
		return showOrder;
	}

	public void setShowOrder(Integer showOrder) {
		this.showOrder = showOrder;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

	
	
	
}
