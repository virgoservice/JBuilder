/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年7月5日 上午11:43:35
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.servicetest;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ramostear.jbuilder.entity.Ticket;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.TicketService;

/**
 * @description: 
 * @author: vabo
 * @version:
 * @Datetime:2017年7月5日
 * @Email:
 */
public class TicketServiceTest {

	private TicketService ticketService;

	@Before
	public void before() {
		System.out.print("begin test!");
		@SuppressWarnings("resource")
		ApplicationContext context = new ClassPathXmlApplicationContext(
				new String[] { "classpath:/spring.xml",
						"classpath:/spring-mybatis.xml" });
		ticketService = (TicketService) context.getBean("ticketService");
	}

	@Ignore
	@Test
	public void testFindCover(){
		Ticket t = ticketService.findById(13L);
		if(t != null){
			System.out.println(t.getCover());
		}

		List<Ticket> tl = ticketService.findAll();
		if(tl != null){
			for(Ticket tmp :tl){
				System.out.println(tmp.toString());
			}
		}
	}

	@Test
	public void testfindByCond(){
		PageDto<Ticket> dto = ticketService.findPageByCond(0, 10, "scenicId", true, null, -1, null, "贵州");
		if (dto != null) {
			List<Ticket> tl = dto.getItems();
			for (Ticket tmp : tl) {
				System.out.println(tmp.toString());
			}
		}
	}

	@After
	public void tearDown(){
		System.out.println("test end ");
	}

}
