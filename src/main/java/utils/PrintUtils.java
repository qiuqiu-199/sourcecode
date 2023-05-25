package utils;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * @ClassName: PrintUtils
 * @Author: qiuzhiq
 * @Date: 2023/5/11 9:20
 * @Description:
 */

public class PrintUtils {


    //把set的所有元素输出，split是自定义的分隔符，比如逗号、\t等
    public static String printSet(Set<?> set, String split) {
        if (set == null)
            return "";
        StringBuilder res = new StringBuilder();
        for (Object ele : set) {
            if (ele != null) res.append(ele.toString()).append(split);
        }
        if (res.toString().endsWith(split))
            res = new StringBuilder(res.substring(0, res.length() - split.length()));
        return res.toString();
    }

    //根据分隔符split分割list并输出
    public static String printList(List<?> list, String split) {
        if (list == null)
            return "";
        String res = "";
        for (Object o : list) {
            if(o!=null) res += o.toString() + split;
        }
        if (res.length() > 0)
            res = res.substring(0, res.length() - split.length());
        return res;
    }

    public static String refineString(String old) {
        return old.replace("\\", "").replace("\"", "");
    }
}
