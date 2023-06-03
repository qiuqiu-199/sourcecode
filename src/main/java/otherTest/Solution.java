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
    public static int integerBreak(int n) {
        int[] dp = new int[n+1];
        // dp[i] = dp[i-1]dp[n-i+1];
        dp[1] = 1;
        for(int i = 2; i <= n; ++i){
            dp[i] = dp[i-1] * dp[1];
            for(int j = 1; j < i; ++j){
                dp[i] = Math.max(dp[i],dp[j]*dp[i-j]);
            }
        }

        return dp[n];
    }

    public static void main(String[] args) {
//        int[] nums = new int[]{1,3,-1,-3,5,3,6,7};
        integerBreak(10);
    }
}