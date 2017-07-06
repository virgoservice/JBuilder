/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月14日 下午3:39:06
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.util;
import org.apache.commons.lang3.time.DateFormatUtils;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月14日 下午3:39:06 
 * @email:361801580@qq.com 
 */
public class OrderCodeGenerator {

	private static long sequence = 0L;
	private static long lastTimestamp = -1L;
	
	public static String getOrderCode(){
		String title="GCT";
		return title+getBase();
	}
	
	public static String getChildOrderCode(){
		String title="GCTC";
		return title+getBase();
	}
	
	public static String getCancelOrderCode(){
		String title="GCC";
		return title+getBase();
	}
	
	public static String getRandomCode(){
		Integer code=(int) (89999999*Math.random()+10000000);
		return code+"";
	}
	
	private static String getBase(){
		long timestamp = System.currentTimeMillis(); 
		
		if (lastTimestamp == timestamp) {
			sequence++;
			if(sequence==100L)
				sequence=0;
		}
		
		lastTimestamp=timestamp;
		
		String datePrefix = DateFormatUtils.format(timestamp, "yyyyMMddHHMMssSSS");
		String s = String.format("%02d", sequence);
		return datePrefix+s;
	}
	public static void main(String[] args) {
		
	}
}
