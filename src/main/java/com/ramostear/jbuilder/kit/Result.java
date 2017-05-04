/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年3月21日 下午7:44:09
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年3月21日 下午7:44:09 
 * @email:ramostear@163.com 
 */
public class Result {
	
	private boolean success;
	
	private Object obj;
	
	public Result(){
		success = true;
	}
	
	public Result(boolean success,Object obj){
		this.success = success;
		this.obj = obj;
	}
	
	public boolean isSuccess(){
		return success;
	}
	
	public void setSuccess(boolean success){
		this.success = success;
	}
	
	public Object getObj(){
		return obj;
	}
	
	public void setObj(Object obj){
		this.obj = obj;
	}

	@Override
	public String toString() {
		return "Result [success=" + success + ", obj=" + obj + "]";
	}

}
