/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年4月10日 下午11:58:10
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年4月10日 下午11:58:10 
 * @email:ramostear@163.com 
 */
public class PropertiesUtil {
	
	private static PropertiesUtil propUtil = null;
	
	@SuppressWarnings("unused")
	private static Properties props = null;
	
	private static Map<String, Properties> propMap = null;
	
	private PropertiesUtil(){}
	
	public static PropertiesUtil getInstance(){
		if(propUtil == null){
			propUtil = new PropertiesUtil();
			propMap = new HashMap<String, Properties>();
		}
		return propUtil;
	}
	/**
	 * 获取配置文件
	 * @param propName
	 * @return
	 */
	public Properties getProperties(String propName){
		if(propMap.get(propName) != null){
			props = propMap.get(propName);
			return propMap.get(propName);
		}else{
			Properties prop = new Properties();
			try {
				prop.load(PropertiesUtil.class.getResourceAsStream("/"+propName+".properties"));
				props = prop;
				propMap.put(propName, prop);
				return prop;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	/**
	 * 获取指定properties文件中的指定属性值
	 * @param propName
	 * @param key
	 * @return
	 */
	public String readValue(String propName,String key){
		Properties prop = getProperties(propName);
		String value = prop.getProperty(key);
		return value;
	}
	/**
	 * 
	 * @param propName
	 * @param key
	 * @param value
	 */
	public void writeProperties(String propName,String key,String value){
		try {
			OutputStream out = new FileOutputStream("src/main/resources/"+propName+".properties");
			Properties prop = this.getProperties(propName);
			prop.setProperty(key, value);
			prop.store(out, "update \""+key+"="+value+"\"");
			System.out.println("ok");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	public static void main(String[] args) {
		PropertiesUtil pu = PropertiesUtil.getInstance();
		String name = pu.readValue("leona","name");
		System.out.println(name);
		pu.writeProperties("leona", "url", "www.ramostear.com");
		Properties props = pu.getProperties("leona");
		String url = props.getProperty("url");
		System.out.println(url);
		
	}
}
