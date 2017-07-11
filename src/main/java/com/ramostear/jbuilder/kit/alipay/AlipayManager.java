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
	
	public static String APP_PRI_KEY="MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCshPAT+iZQ22+VwUfaoudtwySzRrcsXPihCbwplDnJLfo9+oyeCiNb+cXB/ELDYnUmp0pOqlEr2q3D8Vbko/HZEwLqumiK740D9KtuunoSx0LWKB+/wm5pGVlLhHE3SltlYdOc8xR8o5RR8hMN/DiAr/M48XGEzB0j2H3cblDlxRkeXcyob7FRheHCJsA/uoVhCG+QrXK5GL+QuBeDAYZymF1QtGm++9IGiAmTHtHffdxzMKQoakU0BabAZMtBlvP0okLzRP+EwkLyU0dlhbaR2705t1CdKpJQw3BkSQauhJIrhhMxZodt6bl/xexQtFe3qwvWmeYF6FOTH/qPTPdXAgMBAAECggEBAKIGzLAGfVvta9RbTc/StcaJw3s4jCp3Ou+MBBOM6eS/cMoq+Uwou2LTp97zvARjASIHdiuBnHCylgZ0MKbWLvsv9spbvnnWWDuB3ExHiQT/7g7SalcgFbBRpWLehbJm/IWwJh2+0tvoihGYaDr3Sl3aYnV1laciSK/00OhpF0NjmbOgPWQOq01APGHPsRfVEeCDcYaEBfUytcEodwvxQNCkJdmIz9nei3Qi6weQ9BcAwq1vRyZRj2XkC+Dks/VUuoQLWgNW+ScSVZj/OT7H1eJ80Jm/F06pqpEPruHZGmTdlnwMTIsldNyZU/ZvFLIe3VffAdGp9wrp6iUraTncHfkCgYEA2Fp5tPP3JukhMZReK9Wsh5mBQjKHIcEJoRwBYgqmnmvOaWNCUxvriZHu39yb/ENArk995yK/idYSdiNr17x203nJ0QYhU/1PHvUfHzacWKnAQ8VZv+76cxBMYM8OJvTdhDM8Iw/2xNSwpxhycPVIAb0QY4DcZ0xUWztB4ywuVJUCgYEAzCIgCdQr8sg0mgKnHZfqvVOmB5chxtSDHSAi7M1DUQ/sKwvCS8viUJJAYph8eOtr6v9X3eTCyzUTfJaysxpZT8uas8EoBtsHstVziHrnM4gpPJhyih9ZreuSUwiq1UkuSshI53HHZtsPwKXs4iMjotdWVABLpMLISr+IOEfiVTsCgYEAl8SX/cTqCiSdwV7X1J4WYiTflKVHP/lfHOI9Yh4glZ8Ac9NKUmyShLWXQPhLf+FZfS2MH1izzigaWT8txm+RV3XmibdoJ7fZCdlflJDFijjCA4hsFgS5MYAsY/i7b75zqeoa9GmdbKPaq8ytcunNMlMDLRnXAqt7vWfLJ2X1tiUCgYBMOyovwXYwEifio774xDS7QzOrffr1H4NfKxMfz3+mFAYkBR4n5Bm98P/uUfeZyIDinzyW9sjvzgBa9IQDcoGL1QMOwcFK3hy/4gplG1Cf4+dSY7PSdOaullxseb4iLFQHRUhEdi768C+vx8bwpCK4uyXX9MxK2RqnH2OlcOLK5QKBgE2billrMTFr3EIyrU48BB26TdkAtQAvp3qthT1a2aiFVnXSc9HByO/LkiueTV41VhNVSlOe/fAzvdp9Jwz5ejEfmejItmZ1Wu6FvuBjHVrYWaHSm7tM1dtSeCp2fYJYU8KmSbmn393JxewrFC02fBSilZ2lB2Ib78pVi12C7IWz";
	public static String ALIPAY_PUB_KEY="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2Bm41AxydGPsIx3jBshT1gXMi04ajgNKeZm2X5yDcLZ/iaglTPqCtR+0iZ3GJT11rFpjXurHqx3c5ExrfjJEP94o/z9K/UjQQxfkhbYMR+MAP3CrExxWCZzOTGnCjDFmEJmAlJypU64V//F+D3aY0/alhXCrrCDAsIuxfPeSCcr2knyxmcItPXr/rZ8R31BV917UjyBWa9P5b1Fi471e3hLs2QLLTdrKdK3l637b0NmU/RZYIsqqcvtXmjZBxdgGjruGhPZMyUohkqZQjwSc4k0am0RKNAKO6aTfgXHQFXAwrYdg5TKPfkh8Rg+ZDa6LjjbRVvKDlYG1cvfMU6OyPQIDAQAB";
	public static String SERVER_RUL="https://openapi.alipaydev.com/gateway.do";
	public static String APP_ID="2016080500176853";
	
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
