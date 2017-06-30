/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月29日 下午2:28:27
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.servicetest;

import java.util.List;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ramostear.jbuilder.entity.TicketAttachment;
import com.ramostear.jbuilder.service.TicketAttachmentService;

/**
 * @description: 
 * @author: vabo
 * @version:
 * @Datetime:2017年6月29日
 * @Email:
 */
//@RunWith(SpringJUnit4ClassRunner.class) // 指定测试用例的运行器 这里是指定了Junit4
//@ContextConfiguration({ "classpath:/spring.xml", "classpath:/spring-mybatis.xml" })
//@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = false)
//@Transactional
public class TicketAttachmentServiceTest {

//	@Autowired
	private TicketAttachmentService ticketAttachmentService;

	@Before
	public void before() {
		System.out.print("begin test!");
		@SuppressWarnings("resource")
		ApplicationContext context = new ClassPathXmlApplicationContext(
				new String[] { "classpath:/spring.xml",
						"classpath:/spring-mybatis.xml" });
		ticketAttachmentService = (TicketAttachmentService) context.getBean("ticketAttachmentService");
	}

	@Ignore
	@Test
	public void testSave() {
		TicketAttachment ticketAttachment = null;
		for (int i = 0; i < 5; i++) {
			ticketAttachment = new TicketAttachment();
			ticketAttachment.setTicketId(3L);
			ticketAttachment.setAttachmentId(1000L);
			ticketAttachment.setAttachmentUrl("12345678912345678945678913245678946578913548135");
			ticketAttachment.setShowOrder(i);
			ticketAttachment.setUseof(TicketAttachment.USE_LIST);
			ticketAttachmentService.save(ticketAttachment);
		}

		Integer total = ticketAttachmentService.getTotal();
		System.out.println(total);
		
		List<TicketAttachment> ticketAttachmentList = ticketAttachmentService.listAll();
		if(ticketAttachmentList != null){
			for(TicketAttachment ta : ticketAttachmentList){
				System.out.println(ta.toString());
			}
		}
		
	}

	@Ignore
	@Test
	public void testList() {
		List<TicketAttachment> ticketAttachmentList = ticketAttachmentService.listByPage(null, null, null, null, null, false, 0, 20);
		if(ticketAttachmentList != null){
			for(TicketAttachment ta : ticketAttachmentList){
				System.out.println(ta.toString());
			}
		}

		System.out.println("==========>");
		ticketAttachmentList = ticketAttachmentService.listByPage(3L, null, null, null, null, false, 0, 20);
		if(ticketAttachmentList != null){
			for(TicketAttachment ta : ticketAttachmentList){
				System.out.println(ta.toString());
			}
		}
		
		System.out.println("==========>");
		ticketAttachmentList = ticketAttachmentService.listByPage(3L, null, null, 2, null, false, 0, 20);
		if(ticketAttachmentList != null){
			for(TicketAttachment ta : ticketAttachmentList){
				System.out.println(ta.toString());
			}
		}
		
		System.out.println("==========>");
		ticketAttachmentList = ticketAttachmentService.listByPage(null, 1000L, null, null, null, false, 0, 20);
		if(ticketAttachmentList != null){
			for(TicketAttachment ta : ticketAttachmentList){
				System.out.println(ta.toString());
			}
		}
		
		System.out.println("==========>");
		ticketAttachmentList = ticketAttachmentService.listByPage(null, null, "12345678912345678945678913245678946578913548135", null, null, false, 0, 20);
		if(ticketAttachmentList != null){
			for(TicketAttachment ta : ticketAttachmentList){
				System.out.println(ta.toString());
			}
		}
		
		int count = ticketAttachmentService.getCount(null, null, "12345678912345678945678913245678946578913548135", null);
		System.out.println("count = " + count);
	}

	@Ignore
	@Test
	public void testUpdate() {
		TicketAttachment ta = ticketAttachmentService.findById(1L);
		if(ta != null){
			System.out.println(ta.toString());
			ta.setAttachmentUrl("abcdefghijk");
			ta.setAttachmentId(666L);
			ta.setTicketId(444L);
			ta.setShowOrder(999);
			ticketAttachmentService.update(ta);
			TicketAttachment t = ticketAttachmentService.findById(1L);
			if(t != null){
				System.out.println(t.toString());
			}
		}
	}

	@Ignore
	@Test
	public void testDelete() {
		for(int i = 16; i< 25; i++){
			ticketAttachmentService.delete((long)i);
		}
	}

}
