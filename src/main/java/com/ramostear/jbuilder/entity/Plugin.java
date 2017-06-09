/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年5月5日 下午4:44:56
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.entity;

/**
 * @description: 插件实体类
 * @author: vabo
 * @version:
 * @Datetime:2017年5月5日
 * @Email:
 */
public class Plugin {

	private Long id;

	private String name;

	private String account;

	private String accessKey;

	private String secretKey;

	private String provider;

	private String version;

	private String description;

	private String script;
	
	private Integer status; //1 start, 0 stop

	public Plugin() {
	}

	public Plugin(Long id, String name, String account, String accessKey, String secretKey, String provider,
			String version, String description, String script, Integer status) {
		this.id = id;
		this.name = name;
		this.account = account;
		this.accessKey = accessKey;
		this.secretKey = secretKey;
		this.provider = provider;
		this.version = version;
		this.description = description;
		this.script = script;
		this.status = status;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getAccessKey() {
		return accessKey;
	}

	public void setAccessKey(String accessKey) {
		this.accessKey = accessKey;
	}

	public String getSecretKey() {
		return secretKey;
	}

	public void setSecretKey(String secretKey) {
		this.secretKey = secretKey;
	}

	public String getProvider() {
		return provider;
	}

	public void setProvider(String provider) {
		this.provider = provider;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Plugin [id=" + id + ", name=" + name + ", account=" + account + ", accessKey=" + accessKey
				+ ", secretKey=" + secretKey + ", provider=" + provider + ", version=" + version + ", description="
				+ description + ", script=" + script + ", status" + status + "]";
	}

}
