/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月19日 上午11:21:35
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月19日 上午11:21:35 
 * @email:361801580@qq.com 
 */
public class DateUtil {

	public static String getDateYYYYMMDD(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
	    String dateNowStr = sdf.format(date);
	    return dateNowStr;
	}
	
	/**
	 * 获取两个日期之间的日期,包含开始和结束时间
	 * @param start
	 * @param end
	 * @return
	 */
	public static List<Date> getBetweenDates(Date start, Date end) {
	    List<Date> result = new ArrayList<Date>();
	    result.add(start);
	    Calendar tempStart = Calendar.getInstance();
	    tempStart.setTime(start);
	    tempStart.add(Calendar.DAY_OF_YEAR, 1);
	    
	    Calendar tempEnd = Calendar.getInstance();
	    tempEnd.setTime(end);
	    while (tempStart.before(tempEnd)) {
	        result.add(tempStart.getTime());
	        tempStart.add(Calendar.DAY_OF_YEAR, 1);
	    }
	    result.add(end);
	    return result;
	}
	
}
