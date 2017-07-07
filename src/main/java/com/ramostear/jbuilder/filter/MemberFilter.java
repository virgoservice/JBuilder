/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年7月5日 上午3:06:47
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ramostear.jbuilder.consts.SysConsts;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年7月5日 上午3:06:47 
 * @email:ramostear@163.com 
 */
public class MemberFilter implements Filter{

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#destroy()
	 */
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse) res;
		String url = request.getRequestURI();
		HttpSession session = request.getSession(true);
		Object member = session.getAttribute(SysConsts.LOGIN_USER);
		if(url.endsWith("login") || url.endsWith("registry")||url.endsWith("js")||url.endsWith("css")||url.endsWith("gif")||url.endsWith("png")||url.endsWith("jpg")||url.endsWith("verifyCode")){
			chain.doFilter(request, response);
			return;
		}
		if(null == member){
			
			
			response.sendRedirect(request.getContextPath()+"/member/login");
			return;
		}else{
			chain.doFilter(request, response);
			return;
		}
	}

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
