package otherTest;

import utils.Utils;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @ClassName: otherTest.Test
 * @Author: qiuzhiq
 * @Date: 2023/5/14 9:08
 * @Description:
 */

public class Test {
    public static void main(String[] args) {
        System.out.println("getProjectName(\"K9Mail\") = " + getProjectName("K9Mail_gyi"));
        Map<Integer,Integer> map = new HashMap<>();
//        map.key
    }

    public static String getProjectName(String str) {
        String regEx = "[^a-z|^A-Z|^0-9|^_]";
        Pattern p = Pattern.compile(regEx);
        Matcher n = p.matcher(str);
        return n.replaceAll("_");
    }
}
