/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年3月21日 下午8:00:08
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.shiro.realm;


import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;

import java.util.concurrent.atomic.AtomicInteger;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年3月21日 下午8:00:08 
 * @email:ramostear@163.com 
 */
public class RetryLimitHashedCredentialsMatcher extends
		HashedCredentialsMatcher {
	
	 private Cache<String, AtomicInteger> passwordRetryCache;
	 
	 public RetryLimitHashedCredentialsMatcher(CacheManager cacheManager){
		 passwordRetryCache = cacheManager.getCache("passwordRetryCache");
	 }

	@Override
	public boolean doCredentialsMatch(AuthenticationToken token,
			AuthenticationInfo info) {
		String userName = (String) token.getPrincipal();
		AtomicInteger retryCount = passwordRetryCache.get(userName);
		if(retryCount == null){
			retryCount = new AtomicInteger(0);
			passwordRetryCache.put(userName, retryCount);
		}
		if(retryCount.incrementAndGet() > 5){
			throw new ExcessiveAttemptsException();
		}
		boolean matchers = super.doCredentialsMatch(token, info);
		if(matchers){
			passwordRetryCache.remove(userName);
		}
		return matchers;
	}

	 
}
