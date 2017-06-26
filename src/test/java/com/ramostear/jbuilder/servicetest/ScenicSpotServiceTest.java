/**   
The Apache License 2.0
Copyright (c) 2016 Ramostear 
          2017年6月13日 下午4:22:24
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
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.ramostear.jbuilder.entity.ScenicSpot;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.ScenicSpotService;

/**
 * @description:
 * @author: vabo
 * @version:
 * @Datetime:2017年6月13日
 * @Email:
 */
@RunWith(SpringJUnit4ClassRunner.class) // 指定测试用例的运行器 这里是指定了Junit4
@ContextConfiguration({ "classpath:/spring.xml", "classpath:/spring-mybatis.xml" })
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = false)
@Transactional
public class ScenicSpotServiceTest {

	private static final transient Logger log = LoggerFactory.getLogger(ScenicSpotServiceTest.class);

	@Autowired
	private ScenicSpotService scenicSpotService;

	@Before
	public void before() {
		log.info("begin test!");
	}

	@Ignore
	@Test
	public void testSave() {
//		ScenicSpot scenicSpot = null;
//		for (int i = 0; i < 5; i++) {
//			scenicSpot = new ScenicSpot();
//			scenicSpot.setId((long) i);
//			scenicSpot.setName("ss-" + i);
//			scenicSpotService.save(scenicSpot);
//		}
	}

//	@Ignore
	@Test
	public void testUpdate() {
		Long id = 0L;
		PageDto<ScenicSpot> scenicPageDto = null;
		scenicPageDto = scenicSpotService.findByPage(1, 10, "id", true, "aa");
		List<ScenicSpot> scenicSpotList = scenicPageDto.getItems();
		if (scenicSpotList != null) {
			for (ScenicSpot s : scenicSpotList) {
				id = s.getId();
				log.info(s.toString());
			}
		}

		// test find
		ScenicSpot scenicSpot = scenicSpotService.findById(id);
		if (scenicSpot != null) {
			log.info(scenicSpot.toString());
			scenicSpot.setName("new Name : test update");
			scenicSpotService.update(scenicSpot);
			scenicSpot = scenicSpotService.findById(id);
			log.info("updated : " + scenicSpot.toString());
		}
	}

	@After
	public void tearDown() {
		log.info("test end! ");
	}

}
