package com.ramostear.jbuilder.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年6月9日 上午11:26:39 
* @email:361801580@qq.com
 */
public class HttpRequestUtil {
	
	
	 /**
     *	发送POST方法的请求 
     * @param url 发送请求的 URL
     * @param xmlMsg 消息体
     * @param sign 签名
     * @return 所代表远程资源的响应结果
     */
    public static String sendPost(String url, String xmlMsg,String key) {
    	//md5加密字符串
    	String md5str="xmlMsg="+ xmlMsg +key;
        PrintWriter out = null;
        BufferedReader in = null;
        String result = "";
        try {
            URL realUrl = new URL(url);
            // 打开和URL之间的连接
            URLConnection conn = realUrl.openConnection();
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 发送POST请求必须设置如下两行
            conn.setDoOutput(true);
            conn.setDoInput(true);
            // 获取URLConnection对象对应的输出流
            out = new PrintWriter(conn.getOutputStream());
            // 发送请求参数
            out.print("xmlMsg="+xmlMsg+"&sign="+StaxonUtils.getMD5(md5str));
            // flush输出流的缓冲
            out.flush();
            // 定义BufferedReader输入流来读取URL的响应
            in = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
        } catch (Exception e) {
            System.out.println("发送 POST 请求出现异常！"+e);
            e.printStackTrace();
        }
        finally{
            try{
                if(out!=null){
                    out.close();
                }
                if(in!=null){
                    in.close();
                }
            }
            catch(IOException ex){
                ex.printStackTrace();
            }
        }
        return result;
    }    
}
