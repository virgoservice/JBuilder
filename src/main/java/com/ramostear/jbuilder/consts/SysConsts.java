/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月2日 下午4:08:17
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.consts;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年5月2日 下午4:08:17 
 * @email:ramostear@163.com 
 */
public class SysConsts {
	
	/**
	 * 系统当前的登录用户
	 */
	public static final String LOGIN_USER = "login_user";
	
	public static final String BASE_PATH=getBasePath();
	/**
	 * 系统菜单
	 */
	public static final String SYS_MENU = "menu";
	/**
	 * 验证码信息
	 */
	public static final String VERIFY_CODE = "verify_code";
	
    private static String getBasePath(){
        ServletRequestAttributes attrs = (ServletRequestAttributes)RequestContextHolder.currentRequestAttributes();
        HttpServletRequest request = attrs.getRequest();
        final String path = request.getScheme()+"://"+request.getServerName()+":"+(request.getServerPort()==80?"":request.getServerPort())+request.getContextPath();
        return path;
    }
}
