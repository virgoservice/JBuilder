/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月10日 下午3:07:51
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
 * @date: 2017年6月10日 下午3:07:51 
 * @email:361801580@qq.com 
 */
public class Ticket {

	private Long id;
	private Long scenicId;
	private Long groupId;
	private String name;
	private String goodsCode;
	private double price;
	private double shopPrice;
	private Integer stock;
	private Integer goodsType;
	private boolean groupTickets; 
	private Date beginDate;
	private Date endDate;
	private String weekDate;
	private Date checkTime;
	private Date stopCheckTime;
	private Integer sellout;
	private Integer status;
	private String description;
	
	
	
	public Ticket() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getScenicId() {
		return scenicId;
	}
	public void setScenicId(Long scenicId) {
		this.scenicId = scenicId;
	}
	public Long getGroupId() {
		return groupId;
	}
	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGoodsCode() {
		return goodsCode;
	}
	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getShopPrice() {
		return shopPrice;
	}
	public void setShopPrice(double shopPrice) {
		this.shopPrice = shopPrice;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public Integer getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(Integer goodsType) {
		this.goodsType = goodsType;
	}
	public boolean isGroupTickets() {
		return groupTickets;
	}
	public void setGroupTickets(boolean groupTickets) {
		this.groupTickets = groupTickets;
	}
	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getWeekDate() {
		return weekDate;
	}
	public void setWeekDate(String weekDate) {
		this.weekDate = weekDate;
	}
	public Date getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}
	public Date getStopCheckTime() {
		return stopCheckTime;
	}
	public void setStopCheckTime(Date stopCheckTime) {
		this.stopCheckTime = stopCheckTime;
	}
	public Integer getSellout() {
		return sellout;
	}
	public void setSellout(Integer sellout) {
		this.sellout = sellout;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Ticket(Long id, Long scenicId, Long groupId, String name,
			String goodsCode, double price, double shopPrice, Integer stock,
			Integer goodsType, boolean groupTickets, Date beginDate,
			Date endDate, String weekDate, Date checkTime, Date stopCheckTime,
			Integer sellout, Integer status, String description) {
		super();
		this.id = id;
		this.scenicId = scenicId;
		this.groupId = groupId;
		this.name = name;
		this.goodsCode = goodsCode;
		this.price = price;
		this.shopPrice = shopPrice;
		this.stock = stock;
		this.goodsType = goodsType;
		this.groupTickets = groupTickets;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.weekDate = weekDate;
		this.checkTime = checkTime;
		this.stopCheckTime = stopCheckTime;
		this.sellout = sellout;
		this.status = status;
		this.description = description;
	}
	
	
	
}
