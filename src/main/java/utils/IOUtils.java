package utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.Set;

/**
 * @ClassName: IOUtils
 * @Author: qiuzhiq
 * @Date: 2023/5/14 8:49
 * @Description:
 */

public class IOUtils {
    public static synchronized void write_to_file(String filename, String content, boolean flag) {
        File f = new File(filename);
        if(!f.exists()){
            try {
                System.out.println("create " + filename);
                f.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        BufferedWriter writer = null;
        try {
            writer = new BufferedWriter(new FileWriter(f,flag));
            writer.write(content);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("can not write");
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static String printset(Set set){
        StringBuilder res= new StringBuilder();
        for (Object o : set) {
            res.append(o.toString()).append(", ");
        }
        return res.toString();
    }
}
