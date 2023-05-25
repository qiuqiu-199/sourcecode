package otherTest;

import java.util.HashMap;
import java.util.*;

/**
 * @ClassName: otherTest.Solution
 * @Author: qiuzhiq
 * @Date: 2023/5/18 11:09
 * @Description:
 */

class Solution {
    public static String reverseWords(String s) {
        StringBuilder r = new StringBuilder();
        //去除首尾空格
        int t1 = 0;
        while(s.charAt(t1) == ' ') t1++;
        int t2 = s.length()-1;
        while(s.charAt(t2) == ' ') t2--;
        StringBuilder sb = new StringBuilder();
        while (t1 <= t2) {
            char c = s.charAt(t1);
            if (c != ' ' || sb.charAt(sb.length() - 1) != ' ') {
                sb.append(c);
            }
            t1++;
        }
        s = sb.toString();
        //翻转整个字符串
        StringBuilder res = new StringBuilder(s);
        s = res.reverse().toString();
        //翻转单词
        StringBuilder word = new StringBuilder();
        for(int i = 0; i < s.length(); ++i){
            if(s.charAt(i) != ' ') word.append(s.charAt(i));
            else{
                r.append(word.reverse().toString());
                if(i != s.length()-1) r.append(' ');
                word = new StringBuilder();
            }
        }
        r.append(word.reverse().toString());

        return r.toString();
    }

    public static void main(String[] args) {
        System.out.println("reverseWords(\"the sky is blue\") = " + reverseWords(" the sky is blue "));
    }
}
