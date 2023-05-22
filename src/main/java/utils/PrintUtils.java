package utils;

import java.util.Iterator;
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
}
