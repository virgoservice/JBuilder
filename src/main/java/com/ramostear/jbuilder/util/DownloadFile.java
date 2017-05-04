/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年3月21日 下午6:13:06
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/** 
 * @Desc: (文件下载类) 
 * @author: 谭朝红 
 * @date: 2017年3月21日 下午6:13:06 
 * @email:ramostear@163.com 
 */
public class DownloadFile {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(DownloadFile.class);
	/**
	 * 基于文件路径的下载
	 * @param filePath		文件路径
	 * @param fileName		文件名称
	 * @param response		HttpServletResponse
	 */
	public void downloadFile(String filePath,String fileName,HttpServletResponse response){
		BufferedInputStream bis = null;
		InputStream in = null;
		OutputStream out = null;
		try {
			response.setContentType("application/octet-stream");
			response.setHeader("content-disposition", "attachment;filename="+fileName);
			in = new FileInputStream(filePath);
			bis = new BufferedInputStream(in);
			out = response.getOutputStream();
			int c = 0;
			while((c=bis.read()) != -1){
				out.write(c);
			}
			out.flush();
		} catch (Exception e) {
			LOGGER.error("Exception:"+e);
		}finally{
			if(out != null){
				try {
					out.close();
				} catch (IOException e) {
					LOGGER.error("IOException:"+e);
				}
			}
			if(bis != null){
				try {
					bis.close();
				} catch (IOException e) {
					LOGGER.error("IOException:"+e);
				}
			}
			if(in != null){
				try {
					in.close();
				} catch (IOException e) {
					LOGGER.error("IOException:"+e);
				}
			}
		}
	}
	/**
	 * 根据URL地址下载文件 ,type:POST
	 * @param destUrl
	 * @param fileName
	 * @param response
	 */
	public void downloadFileHttpURL(String destUrl,String fileName,HttpServletResponse response){
		if(destUrl != null){
			if(destUrl.lastIndexOf("/")!=-1){
				fileName = fileName.substring(fileName.lastIndexOf("/")+1);
			}
		}
		BufferedInputStream bis = null;
		InputStream in = null;
		HttpURLConnection connection = null;
		OutputStream out = null;
		try {
			response.setContentType("application/octet-stream");
			response.setHeader("Content-disposition", "attachment;filename="+fileName);
			URL url = new URL(destUrl);
			connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("POST");
			connection.connect();
			in = connection.getInputStream();
			bis = new BufferedInputStream(in);
			out = response.getOutputStream();
			int c = 0;
			while((c = bis.read()) != -1){
				out.write(c);
			}
			out.flush();
		} catch (Exception e) {
			LOGGER.error("下载文件失败："+e);
		}finally{
			if(connection != null){
				connection.disconnect();
			}
			if(out != null){
				try {
					out.close();
				} catch (IOException e) {
					LOGGER.error("OUT IOException:"+e);
				}
			}
			if(bis != null){
				try {
					bis.close();
				} catch (IOException e) {
					LOGGER.error("bis IOException:"+e);
				}
			}
			if(in != null){
				try {
					in.close();
				} catch (IOException e) {
					LOGGER.error("IN IOException:"+e);
				}
			}
		}
	}
	/**
	 * 根据url请求地址下载文件 （type:GET）
	 * @param destUrl
	 * @param fileName
	 * @param response
	 */
	public void downloadFileHttpURLByGet(String destUrl,String fileName,HttpServletResponse response){
		if(destUrl != null){
			if(destUrl.lastIndexOf('/') != -1){
				fileName = fileName.substring(fileName.lastIndexOf('/')+1);
			};
		}
		BufferedInputStream bis = null;
		InputStream in = null;
		HttpURLConnection connection = null;
		OutputStream out = null;
		
		try {
			response.setContentType("application/octet-stream");
			response.setHeader("Content-disposition", "attachment;filename="+fileName);
			URL url = new URL(destUrl);
			connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("GET");
			connection.connect();
			in = connection.getInputStream();
			bis = new BufferedInputStream(in);
			out = response.getOutputStream();
			int c = 0;
			while((c = bis.read()) != -1){
				out.write(c);
			}
			out.flush();
		} catch (Exception e) {
			LOGGER.error("文件下载失败："+e);
		}finally{
			if(connection != null){
				connection.disconnect();
			}
			if(out != null){
				try {
					out.close();
				} catch (IOException e) {
					LOGGER.error("out IOException:"+e);
				}
			}
			if(bis != null){
				try {
					bis.close();
				} catch (IOException e) {
					LOGGER.error("in IOException:"+e);
				}
			}
			if(in != null){
				try {
					in.close();
				} catch (IOException e) {
					LOGGER.error("in IOException:"+e);
				}
			}
		}
	}
}
