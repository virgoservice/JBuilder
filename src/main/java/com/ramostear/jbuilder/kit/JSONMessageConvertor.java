/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年3月21日 下午7:33:36
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.kit;

import java.io.IOException;
import java.io.OutputStream;

import org.springframework.http.HttpInputMessage;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.converter.AbstractHttpMessageConverter;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.http.converter.HttpMessageNotWritableException;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年3月21日 下午7:33:36 
 * @email:ramostear@163.com 
 */
public class JSONMessageConvertor extends AbstractHttpMessageConverter<Object> {

	@Override
	protected Object readInternal(Class<? extends Object> clz,
			HttpInputMessage inputMessage) throws IOException,
			HttpMessageNotReadableException {
		throw new UnsupportedOperationException();
	}

	@Override
	protected boolean supports(Class<?> clz) {
		return true;
	}

	@Override
	protected void writeInternal(Object t, HttpOutputMessage outputMessage)
			throws IOException, HttpMessageNotWritableException {
		String jsonString = JSON.toJSONString(t,
				SerializerFeature.WriteDateUseDateFormat,
				SerializerFeature.DisableCircularReferenceDetect);
		OutputStream os = outputMessage.getBody();
		os.write(jsonString.getBytes("UTF-8"));
		os.flush();
	}

}
