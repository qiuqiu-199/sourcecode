package otherTest;

import utils.IOUtils;
import utils.Utils;

import java.io.File;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @ClassName: otherTest.Test
 * @Author: qiuzhiq
 * @Date: 2023/5/14 9:08
 * @Description:
 */

public class Test {
    public static int uniquePathsWithObstacles(int[][] obstacleGrid) {
        int[][] dp = new int[obstacleGrid.length][obstacleGrid[0].length];

        for (int i = 0; i < obstacleGrid.length; ++i){
            if (obstacleGrid[0][i] == 1) break;
            dp[0][i] = 1;
        }
        for (int i = 0; i < obstacleGrid.length; ++i){
            if (obstacleGrid[i][0] == 1) break;
            dp[i][0] = 1;
        }

        for (int i = 1; i < obstacleGrid.length; ++i){
            for (int j = 1; j < obstacleGrid[0].length; ++j){
                if (obstacleGrid[i][j] == 1) continue;
                dp[i][j] = dp[i-1][j] + dp[i][j-1];
            }
        }

        return dp[obstacleGrid.length-1][obstacleGrid[0].length-1];
    }
    public static void main(String[] args) {
        Set<String> set = new HashSet<>();
        set.add("yy");
        set.add("aa");
        set.add("ww");
        String s = set.toString();
        System.out.println("set.toString() = " + set.toString());


    }


}
