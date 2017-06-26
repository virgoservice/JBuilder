/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月13日 上午10:56:27
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.exception;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月13日 上午10:56:27 
 * @email:361801580@qq.com 
 */
public class BusinessException extends RuntimeException {
	
	private static final long serialVersionUID = 1L;
	
	protected String key;
    protected Object[] args;
	
	public BusinessException(String key)
	{
		super(key);
        this.key = key;
	}
	
	public  BusinessException(String key,  Object ... args)
    {
        super(key);
        this.key = key;
        this.args = args;
    }

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Object[] getArgs() {
		return args;
	}

	public void setArgs(Object[] args) {
		this.args = args;
	}

	
	
}
