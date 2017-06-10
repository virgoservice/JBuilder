/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午2:54:21
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
 * @date: 2017年6月10日 下午2:54:21 
 * @email:361801580@qq.com 
 */
public class TicketGroup {
	private Long id;
	private String name;
	private String description;
	
	public TicketGroup() {
		super();
	}
	public TicketGroup(Long id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
