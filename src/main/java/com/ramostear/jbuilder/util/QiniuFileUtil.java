/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年3月25日 下午10:18:07
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.util;

import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.BucketManager.BatchOperations;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年3月25日 下午10:18:07 
 * @email:ramostear@163.com 
 */
public class QiniuFileUtil {

	
	private static String path = "http://oncn0mvq5.bkt.clouddn.com/";
	
	private static String qiniuAccess = "E0snBxkvRYlGbf6sNfk8xbQDYjWPZJi8jpx1hiup";
	
	private static String qiniuKey = "9pZXmL6nwofxwefA4bYrAnck3H-44mcuWjpqIx3s";
	
	private static String bucketName = "cloud-leona-qiniu";
	
	
	public static String upload(MultipartFile file){
		String fileName = "", extName = "",  filePath = "";
		if(null != file && !file.isEmpty()){
			extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			fileName = UUID.randomUUID() + extName;
			Configuration cfg = new Configuration(Zone.zone2());
			UploadManager uploadManager = new UploadManager(cfg);
			Auth auth = Auth.create(qiniuAccess, qiniuKey);
			String token = auth.uploadToken(bucketName);
			Response r ;
			try {
				r = uploadManager.put(file.getBytes(), fileName, token);
				if(r.isOK()){
					filePath = path+fileName;
				}
			} catch (Exception e) {
			}
		}
		return filePath;
	}
	
	public static boolean deleteQiniuFile(String url){
		Auth auth = Auth.create(qiniuAccess, qiniuKey);
		Configuration cfg = new Configuration(Zone.zone2());
		BucketManager bucketManager = new BucketManager(auth, cfg);
		String key = url.replace(path, "");
		try {
			bucketManager.delete(bucketName, key);
			return true;
		} catch (QiniuException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean deleteQiniuFileBatch(List<String> urls){
		Auth auth = Auth.create(qiniuAccess, qiniuKey);
		Configuration cfg = new Configuration(Zone.zone2());
		BucketManager bucketManager = new BucketManager(auth, cfg);
		BucketManager.BatchOperations operations = new BatchOperations();
		for(String url:urls){
			String key = url.replace(path, "");
			operations.addDeleteOp(bucketName,key);
		}
		try {
			bucketManager.batch(operations);
			return true;
		} catch (QiniuException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	/*public static void main(String[] args) {
		List<String> urls = new ArrayList<String>();
		urls.add("http://oncn0mvq5.bkt.clouddn.com/c923f916-1cfe-47ca-afa5-4f65d55fdad9.png");
		urls.add("http://oncn0mvq5.bkt.clouddn.com/76511016-e04a-4fb7-a857-e53942380379.png");
		boolean flag = deleteQiniuFileBatch(urls);
		System.out.println(flag);
	}*/
	
}
