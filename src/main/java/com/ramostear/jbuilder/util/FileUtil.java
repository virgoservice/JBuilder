/**   
													The Apache License 2.0
												  Copyright (c) 2016 Ramostear 
								                              2017年4月12日 上午3:17:38
								Unless required by applicable law or agreed to in writing, software
								 distributed under the License is distributed on an "AS IS" BASIS,
							  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
								See the License for the specific language governing permissions and
								                 limitations under the License. 
*/
package com.ramostear.jbuilder.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

/** 
 * @Desc: () 
 * @author: 谭朝红 
 * @date: 2017年4月12日 上午3:17:38 
 * @email:ramostear@163.com 
 */
public class FileUtil {
	
	private static FileUtil fileUtil = null;
	
	private FileUtil(){}
	
	public static FileUtil getInstance(){
		if(fileUtil==null){
			fileUtil = new FileUtil();
		}
		return fileUtil;
	}
	
	/**
	 * 写文件 
	 * @param f
	 * @param content
	 */
	public  void writeFile(File f,String content){
		  writeFile(f, content,"utf-8");
	}
	/**
	 * 写文件 
	 * @param f
	 * @param content
	 */
	public  void writeFile(File f,String content,String encode){
		  try {
		   if (!f.exists()) {
		    f.createNewFile();
		   }
		   OutputStreamWriter osw=new OutputStreamWriter(new FileOutputStream(f),encode);
		   BufferedWriter utput = new BufferedWriter(osw);
		   utput.write(content);
		   utput.close();
		  } catch (Exception e) {
		   e.printStackTrace();
		  }
	}
	/**
	 * 写文件
	 * @param path
	 * @param content
	 */
	public  void writeFile(String path, String content,String encode) {
	       File f = new File(path);
	       writeFile(f, content,encode);
	}
	/**
	 * 写文件
	 * @param path
	 * @param content
	 */
	public  void writeFile(String path, String content) {
	       File f = new File(path);
	       writeFile(f, content,"utf-8");
	}

	/**
	 * 读取文件
	 * @param file
	 * @return
	 */
	public  String readFile(File file){
		return readFile(file,"UTF-8");
	}
	/**
	 * 读取文件
	 * @param file
	 * @return
	 */
	public  String readFile(File file,String encode){
		String output = "";
		if (file.exists()) {
			if (file.isFile()) {
				try {
					InputStreamReader isr=new InputStreamReader(new FileInputStream(file),encode);
					BufferedReader input = new BufferedReader(isr);
					StringBuffer buffer = new StringBuffer();
					String text;
					while ((text = input.readLine()) != null)
						buffer.append(text + "\n");
					output = buffer.toString();
					input.close();
				} catch (IOException ioException) {
					System.err.println("File Error！");
				}
			} else if (file.isDirectory()) {
				String[] dir = file.list();
				output += "Directory contents：\n";
				for (int i = 0; i < dir.length; i++) {
					output += dir[i] + "\n";
				}
			}

		} else {
			System.err.println("Does not exist！");
		}

		return output;
	}
	/**
	 * 读取文件
	 * @param fileName
	 * @return
	 */
	public  String readFile(String fileName,String encode) {
		File file = new File(fileName);
		return readFile(file,encode);
	}
	/**
	 * 读取文件
	 * @param fileName
	 * @return
	 */
	public  String readFile(String fileName) {
		return readFile(fileName,"utf-8");
	}


	/**
	 * 获取目录下所有文件
	 * @param folder
	 * @return
	 */
	public  List<File> getFiles(String folder){
		File file=new File(folder);
		List<File> files=new ArrayList<File>();
		if (file.exists()) {
			File[] sonFiles=file.listFiles();
			if (sonFiles!=null && sonFiles.length>0) {
				for (int i = 0; i < sonFiles.length; i++) {
					if (!sonFiles[i].isDirectory()) {
						files.add(sonFiles[i]);
					}
				}
			}
		}
		return files;
	}
	/**
	 * 获取目录下所有文件夹
	 * @param folder
	 * @return
	 */
	public  List<File> getFolders(String folder){
		File file=new File(folder);
		List<File> files=new ArrayList<File>();
		if (file.exists()) {
			File[] sonFiles=file.listFiles();
			if (sonFiles!=null && sonFiles.length>0) {
				for (int i = 0; i < sonFiles.length; i++) {
					if (sonFiles[i].isDirectory()) {
						files.add(sonFiles[i]);
					}
				}
			}
		}
		return files;
	}
	/**
	 * 判断是否有子目录
	 * @param folder
	 * @return
	 */
	public  boolean hasSonFolder(String folder){
		File file=new File(folder);
		return hasSonFolder(file);
	}
	/**
	 * 判断是否有子目录
	 * @param folder
	 * @return
	 */
	public  boolean hasSonFolder(File file){
		if (file.exists()) {
			File[] sonFiles=file.listFiles();
			if (sonFiles!=null && sonFiles.length>0) {
				for (int i = 0; i < sonFiles.length; i++) {
					if (sonFiles[i].isDirectory()) {
						return true;
					}
				}
			}
		}
		return false;
	}
	/**
	 * 创建目录
	 * @param folder
	 */
	public  void mkdir(String folder){
		File file=new File(folder);
		if (!file.exists()) {
			file.mkdir();
		}
	}
	/**
	 * 复制文件
	 * @param src
	 * @param dst
	 */
	public  void copy(File src, File dst) {
		try {
			int BUFFER_SIZE = 32 * 1024;
			InputStream in = null;
			OutputStream out = null;
			try {
				in = new FileInputStream(src);
				out = new FileOutputStream(dst);
				byte[] buffer = new byte[BUFFER_SIZE];
				int count;
				while ((count = in.read(buffer)) != -1) {
					out.write(buffer, 0, count);
				}
			} finally {
				if (null != in) {
					in.close();
				}
				if (null != out) {
					out.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void  saveFile(InputStream input,String path,String filename){
		try {
			FileOutputStream fs = new FileOutputStream(path+filename);
			byte[] buffer = new byte[1024*1024];
			int byteread = 0;
			while((byteread = input.read(buffer)) != -1){
				fs.write(buffer, 0, byteread);
				fs.flush();
			}
			fs.close();
			input.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
    /**
     * 复制文件夹
     * @param sourceDir
     * @param targetDir
     * @throws IOException
     */
    public  void copyDirectiory(String sourceDir, String targetDir) throws IOException {
    	if (new File(sourceDir).exists()) {
            // 新建目标目录
        	File targetFolder=new File(targetDir);
        	if (!targetFolder.exists()) {
    			targetFolder.mkdirs();
    		}
            // 获取源文件夹当前下的文件或目录
            File[] file = (new File(sourceDir)).listFiles();
            for (int i = 0; i < file.length; i++) {
                if (file[i].isFile()) {
                    // 源文件
                    File sourceFile = file[i];
                    // 目标文件
                    File targetFile = new File(new File(targetDir).getAbsolutePath() + File.separator + file[i].getName());
                    copy(sourceFile, targetFile);
                }
                if (file[i].isDirectory()) {
                    // 准备复制的源文件夹
                    String dir1 = sourceDir + "/" + file[i].getName();
                    // 准备复制的目标文件夹
                    String dir2 = targetDir + "/" + file[i].getName();
                    copyDirectiory(dir1, dir2);
                }
            }
		}
    }

	/**
	 * 获取扩展名
	 */
	public  String getExt(File src){
		if (src!=null) {
			String name=src.getName();
			return name.substring(name.lastIndexOf("."), name.length());
		}
		return "";
	}
	/**
	 * 获取扩展名
	 */
	public  String getExt(String src){
		if (src!=null) {
			return src.substring(src.lastIndexOf("."), src.length());
		}
		return "";
	}
	/**
	 * 删除指定文件
	 * @param path
	 */
	public void del(String path){
		File file=new File(path);
		deleteFile(file);
	}
	/**
	 * 递归删除文件夹下所有文件
	 * @param file
	 */
	public void deleteFile(File file) {
		if (file.exists()) { //判断文件是否存在
			if (file.isFile()) { //判断是否是文件
				file.delete(); //delete()方法 你应该知道 是删除的意思;
			} else if (file.isDirectory()) { //否则如果它是一个目录
				File files[] = file.listFiles(); //声明目录下所有的文件 files[];
				for (int i = 0; i < files.length; i++) { //遍历目录下所有的文件
					deleteFile(files[i]); //把每个文件 用这个方法进行迭代
				}
			}
			file.delete();
		}
	}
	
	

}
