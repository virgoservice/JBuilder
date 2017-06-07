package com.ramostear.jbuilder.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月26日 上午11:02:36 
* @email:361801580@qq.com
<dependency> 
    <groupId>commons-codec</groupId> 
    <artifactId>commons-codec</artifactId> 
    <version>20041127.091804</version> 
</dependency>   
 */
public class ImageUtil {
	
	/**
	 * base64转图片
	 * @param imgStr
	 * @param imgFile
	 * @return
	 */
	public static boolean generateImage(String imgStr, String imgFile){
		
		org.apache.commons.codec.binary.Base64 decoder = new org.apache.commons.codec.binary.Base64();

		byte[] b = decoder.decodeBase64(imgStr.getBytes());

		String imgFilePath = imgFile;
		OutputStream out;
		try {
			out = new FileOutputStream(imgFilePath);
			out.write(b);
			out.flush();
			out.close();
			return true;
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	/**
	 * 图片转base64
	 * @param imgFile
	 * @return
	 */
	public static String getImageStr(String imgFile) {
		InputStream in = null;
		byte[] data = null;
		// 读取图片字节数组
		try {
			in = new FileInputStream(imgFile);
			data = new byte[in.available()];
			in.read(data);
			in.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 对字节数组Base64编码
		org.apache.commons.codec.binary.Base64 decoder = new org.apache.commons.codec.binary.Base64();
		byte[] enbytes = decoder.encodeBase64Chunked(data);  
		return new String(enbytes);
	}
}
