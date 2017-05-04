/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年3月21日 下午2:19:24
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit;

import java.io.Serializable;
import java.util.List;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年3月21日 下午2:19:24 
 * @email:ramostear@163.com 
 */
public class PageDto<T> implements Serializable {
	private static final long serialVersionUID = -3752188066547928093L;

	private Long totalCount;// 记录总数
	private Integer pageNo;// 页码,当前页数
	private Integer pageSize;// 分页条数
	private List<T> items;// 查询结果
	private String pageStr;

	public PageDto() {
		super();
	}

	public PageDto(Long totalCount, Integer pageNo, Integer pageSize,
			List<T> items) {
		super();
		this.totalCount = totalCount;
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.items = items;
	}

	public Long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Long totalCount) {
		this.totalCount = totalCount;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public List<T> getItems() {
		return items;
	}

	public void setItems(List<T> items) {
		this.items = items;
	}

	@Override
	public String toString() {
		return "PageDto [totalCount=" + totalCount + ", pageNo=" + pageNo
				+ ", pageSize=" + pageSize + ", items=" + items + "]";
	}
	/**
	 * @param pageStr the pageStr to set
	 */
	public void setPageStr(String pageStr) {
		this.pageStr = pageStr;
	}
	public String getPageStr() {
		Integer totalPage = (int) (totalCount % pageSize > 0 ? (totalCount
				/ pageSize + 1) : (totalCount / pageSize));
		Integer prePage = pageNo - 1 > 0 ? pageNo - 1 : 1;
		Integer nextPage = pageNo + 1 > totalPage ? totalPage : pageNo + 1;
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("<ul class=\"pagination pagination-sm no-margin pull-right\">");
		if (pageNo == 1) {
			stringBuffer
					.append("");
		} else {
			stringBuffer.append("<li><a href=\"#\" onclick=\"query(" + prePage
					+ "," + pageSize + ")\">Previous</a></li>");
		}
		for (int i = pageNo-5; i < pageNo+5; i++) {
			if (i<1||i>totalPage) {
				continue;
			}
			if (i==pageNo) {
				stringBuffer
				.append("<li class=\"paginate_button active\"><a href=\"#\"  onclick=\"query("
							+ i + "," + pageSize + ")\">"+i+"</a></li>");
			}else {
				stringBuffer
				.append("<li><a href=\"#\"  onclick=\"query("
							+ i + "," + pageSize + ")\">"+i+"</a></li>");
			}
		}
		if (pageNo == totalPage) {
			stringBuffer
					.append("");
		} else {
			stringBuffer
			.append("<li><a href=\"#\" onclick=\"query("
					+ nextPage + "," + pageSize + ")\">Next</a></li>");
		}
		stringBuffer.append("</ul>");
		return stringBuffer.toString();
	}
	
}
