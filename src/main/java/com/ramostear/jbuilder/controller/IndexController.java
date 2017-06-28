/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月27日 上午10:34:53
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramostear.jbuilder.service.UserService;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年6月27日 上午10:34:53 
 * @email:ramostear@163.com 
 */
@Controller
public class IndexController {
	
	
	@Autowired
	private UserService userService;

	@RequestMapping(value={"/","","/index","/index.html","/index.htm"},method=RequestMethod.GET)
	public String index(){
		
		return "index/index";
	}
	
	
}
