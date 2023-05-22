package utils;

import java.io.*;
import com.google.common.io.Files;
import java.util.*;
import java.util.Map.Entry;
import java.util.regex.Pattern;

public class Utils {

	//根据系统不同，执行命令行
	public static Object exec(String commandStr) {
		String os = System.getProperty("os.name");
		// System.out.println(os+" os!!!");
		if (os.toLowerCase().startsWith("win")) {
			String out = exeCmd(commandStr);
//			System.out.println(out);
		} else {
			exeShell(commandStr);
		}
		return null;
	}

	public static String exeCmd(String commandStr) {
		BufferedReader br = null;
		StringBuilder sb = new StringBuilder();
		try {
			commandStr = "cmd /c " + commandStr;
			Process p = Runtime.getRuntime().exec(commandStr);
			// p.waitFor();
			br = new BufferedReader(new InputStreamReader(p.getInputStream()));
			String line = null;
			while ((line = br.readLine()) != null) {
				if (line.contains("java.io.FileNotFoundException"))
					System.out.println(line);
				sb.append(line + "\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return sb.toString();
	}
	public static String exeShell(String commandStr) {
		BufferedReader br = null;
		StringBuilder sb = new StringBuilder();
		try {
			String[] cmdA = { "/bin/sh", "-c", commandStr };
			Process process = Runtime.getRuntime().exec(cmdA);
			br = new BufferedReader(new InputStreamReader(process.getInputStream()));
			String line = null;
			while ((line = br.readLine()) != null) {
				System.out.println(line);
				sb.append(line).append("\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return sb.toString();
	}


	/*字符串类操作*/

	//去掉字符串的斜杠和引号
	public static String refineString(String old) {
		if(old==null || old.equals("\"\"")) return "null";
		String newStr = old.replace("\\", "").replace("\"", "");
		return newStr;
	}


	/*文件类操作*/

	//创建文件夹
	public static void createFolder(String folder) {
		File fd = new File(folder);
		if (!fd.exists())
			fd.mkdirs();
	}
	//逐行读取文件
	public static ArrayList<String> getList(String filename) {
		ArrayList<String> list = new ArrayList<String>();
		File file = new File(filename);
		InputStream instream = null;
		InputStreamReader inputreader = null;
		BufferedReader buffreader = null;
		try {
			instream = new FileInputStream(file);
			if (instream != null) {
				inputreader = new InputStreamReader(instream, "gbk");
				buffreader = new BufferedReader(inputreader);
				String line;
				while ((line = buffreader.readLine()) != null) {
					// line = line.replace("\n", "");
					list.add(line);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(buffreader!=null){
					buffreader.close();
					inputreader.close();
					instream.close();
				}else{
					return null;
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	//复制文件
	public static void copyFile(String oldf, String newf) {
		File f1 = new File(oldf);
		File f2 = new File(newf);
		try {
			Files.copy(f1, f2);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	//移动文件
	public static void moveFile(String oldf, String newf) {
		File f1 = new File(oldf);
		File f2 = new File(newf);
		try {
			Files.move(f1, f2);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
