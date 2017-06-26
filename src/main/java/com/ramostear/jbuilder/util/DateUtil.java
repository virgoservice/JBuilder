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
import java.util.Date;

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
}
