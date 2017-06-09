/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年4月25日 下午3:13:17
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.servlet;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ramostear.jbuilder.consts.SysConsts;
import com.ramostear.jbuilder.util.VerifyCodeUtil;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年4月25日 下午3:13:17 
 * @email:ramostear@163.com 
 */
public class VerifyCodeServlet extends HttpServlet implements Servlet {

	/** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 424178704566650247L;

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "No-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");
		
		String verifyCode = VerifyCodeUtil.generateVerifyCode(4);
		
		HttpSession session = request.getSession();
		session.removeAttribute(SysConsts.VERIFY_CODE);
		System.out.println(verifyCode);
		session.setAttribute(SysConsts.VERIFY_CODE, verifyCode);
		System.out.println(session.getAttribute(SysConsts.VERIFY_CODE)+"---id:"+session.getId());
		
		int w=146,h=35;
		VerifyCodeUtil.outputImage(w, h, response.getOutputStream(), verifyCode);
	}
}
