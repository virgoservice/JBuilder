/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月27日 上午10:52:52
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

/**
 * @description: ticket 与 attachment关联关系表 one to many
 * @author: vabo
 * @version:
 * @Datetime:2017年6月27日
 * @Email:
 */
public class TicketAttachment {

	private Long id;
	private Long ticketId;
	private Long attachmentId;
	private String attachmentUrl;
	private Integer showOrder;
	private Integer useof; // list or illustration

	public static final int USE_COVER = 1;
	public static final int USE_LIST = 2;
	public static final int USE_ILLU = 3;

	public TicketAttachment() {
	}

	public TicketAttachment(Long id, Long ticketId, Long attachmentId, String attachmentUrl, Integer showOrder,
			Integer useof) {
		this.id = id;
		this.ticketId = ticketId;
		this.attachmentId = attachmentId;
		this.attachmentUrl = attachmentUrl;
		this.showOrder = showOrder;
		this.useof = useof;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getTicketId() {
		return ticketId;
	}

	public void setTicketId(Long ticketId) {
		this.ticketId = ticketId;
	}

	public Long getAttachmentId() {
		return attachmentId;
	}

	public void setAttachmentId(Long attachmentId) {
		this.attachmentId = attachmentId;
	}

	public String getAttachmentUrl() {
		return attachmentUrl;
	}

	public void setAttachmentUrl(String attachmentUrl) {
		this.attachmentUrl = attachmentUrl;
	}

	public Integer getShowOrder() {
		return showOrder;
	}

	public void setShowOrder(Integer showOrder) {
		this.showOrder = showOrder;
	}

	public Integer getUseof() {
		return useof;
	}

	public void setUseof(Integer useof) {
		this.useof = useof;
	}

	@Override
	public String toString() {
		return "TicketAttachment [id=" + id + ", ticketId=" + ticketId + ", attachmentId=" + attachmentId
				+ ", attachmentUrl=" + attachmentUrl + ", showOrder=" + showOrder + ", useof=" + useof + "]";
	}

}
