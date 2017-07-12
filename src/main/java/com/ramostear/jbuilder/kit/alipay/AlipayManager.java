/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年6月20日 下午3:51:39
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit.alipay;
import com.alipay.api.DefaultAlipayClient;
import com.ramostear.jbuilder.consts.SysConsts;

/** 
 * @Desc: () 
 * @author: 赖生龙 
 * @date: 2017年6月20日 下午3:51:39 
 * @email:361801580@qq.com 
 */
public class AlipayManager {
	
	public static String APP_PRI_KEY="MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC6H1BEQK3MdaXVlDCwPPCsxnHfIC4WSf+mShjp3sCPKidIQvInLY2VS/qJ0cF2H6zELNlh2UQSb5FYQG+6uziVyHHuE+vMI+Db1CHUN95USGqPV3tfcK/F9NjC1hasbd/LColIKt8IQDZMoldTwoioo1KWVAciP5mFvmSBdAW7KuWhdu/hNNvkumuzn/Jme6R//N0VwwgD6HoPYJFj5CVknmr3HqeihLbNZR/TUARY9eoSZAtVyxz/3hTpUXMMrimOudlwf1hRN8kkjn1jbQwtAPjGL2ORzrl6EngesLZYMHAFFpNRoL5pfmGHrZetyXwk0ib5wGw2z7nVjRQg6UK1AgMBAAECggEAPdqyPjyQheaDWluJYsid441/wntbVaT6BTWS2gZhUDLeIzG8cDC/YOKDPNIszSjxrbCJ/e7KpKXXU9D2UMRvpbebxVdxgcJatDPnmjOG+9OlNkYIhktY3xzj/LxRhLRvL3cs8ILu5DsS0J0TEI8SA5ljlPoP9N3WE5CWrj70uKKTZykeByZKSLeD2jR5BvP3GSRb8pcF7XW+FB2AXd/NEah2gEYOoGhXrrR0FHREnSCfoZTxKieEhZYrj9Uup6lIHRKcJLKxSMr4/vk8g0PHcXBvfJ3A+fotSYGbap3nuLqWnSNKyhEb+V0F1KJhztU7ZeHE2aQOcgGMRtLbPgw/8QKBgQDsmcKrSL7Y8jfIaaG1rVoZVk6It3xLyTCRTughhtN4vGMtgrsf2e2xaazuhva30V6mIWmH1L16kjBf15ndXnxN1zvaiJ1yw55bZAw64g9Efkz7WHQpvzBUMMNHG4216oQsW+Cugi2A3tfJ0HBgAlBXFIr9QlaR04XwvtEqqYqu5wKBgQDJYgPZ9gSv4eSEhUamd9CPAU0KnPXQuPWNVOdXVCdZL/KNU1SLnCASDETUnqtIGAIfenIKx1VlV5i5jyViSFALgQQd8bjsPEJhvXk9I8E7s+BQlj6FkWsEJ+Ts4k3mQbuxchX4loP0NxegrSDWnYVXtbZSoIGYToHlMyRDKVRaAwKBgC6Okx/hUKyf/RoSrx9w3SnfMdT1RiAjlssBG+x8+1/msh1ifC/oUj127fCB3kqNiHJoYLu5wQ89dQdnBX/p98vZbo2yFElg9OhG56EumpJ/x+Ytoa4VUQ1ACy0S3u/NFfUknzG3q/yP3SZ5PaOm0OhRwofTZfWMCe81nTMn6YJBAoGBAIS66GTxRNeT4GUD3rP7hmeq6NdU6qOeNKHpUuz5F1IuSwSg5rl5tp2OnpMw3R2QTV3n+2BlT0CTQqMS2QX1OWTLrSX7WvHBKdN36X/FoCe0f+U9kYnBdbJwhO8onUVlD8t9sUN+GQyOfzE0ys8JVYigyMGe7quvGugxE/Z8OA93AoGBAOVrvOtmkfcE3yFP74wz6F0snNpNWAD4spjIleKIygh8D/YFJlNiB8I5kf3KqnjVrVaw5bMQURivwirR3iQeTUtW5dEKKwkJW+lz4NnCKAKhIfjBAFIUmhtEthXAbm2A0Fd4uIohytE/kFPHf5OVrWIAmwP2CXrk1/b65+pq3zXo";
	public static String ALIPAY_PUB_KEY="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjfe2dIKd7SZJa2xaQDiyv96yoiMBnJ7RsbjnL3vRX8pi6rSYGKR5C+P+fbvi6RsLMm+fdUON67vDphPORBX9T2yeQIDmqUreBFOoXTx9t3aUKeXulANf0uwMUwVpMAaKd9ie7z/zKF5WvQ3WVK4CAF9bK25eNqqqpqHEA5xhlufYSHJCmb0uqRE7fTkga/zlRRUrK+Hi4ZFRT1roackH0+L3BI0AQEmC3XEy5JrO4h4gK8Hhgb/lBWuirDTaQJJCSLA/qU5vDJ/i9v1PJuHYAzjTPGQsTiC5CrG5U2anvwY0IYOiwnafUSKybWyA+1/Hqpa6IIX9OKvcJpZjlsSyOQIDAQAB";
	public static String SERVER_RUL="https://openapi.alipay.com/gateway.do";
	public static String APP_ID="2017061407489096";
	
	public static String NOTIFY_URL=SysConsts.BASE_PATH+"/order/pay/payResultNotice";
	public static String RETURN_URL=SysConsts.BASE_PATH+"/order/pay/reload";//付款后关闭当前页面并刷新父页面
	public static String RETURN_LIST=SysConsts.BASE_PATH+"/member/order/list";//付款后跳转到列表
	
	
	private AlipayManager(){}

    private static volatile DefaultAlipayClient instance;  

    public static DefaultAlipayClient getIstance() { 
        if (instance == null) {
            synchronized (AlipayManager.class) {
                if (instance == null) {
                    instance = new DefaultAlipayClient(SERVER_RUL, APP_ID, APP_PRI_KEY, "json", "UTF-8", ALIPAY_PUB_KEY, "RSA2");   
                }   
            }   
        }   
        return instance;   
    }
}
