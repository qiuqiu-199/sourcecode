package test;

import java.util.*;

/**
 * @ClassName: Solution
 * @Author: qiuzhiq
 * @Date: 2023/9/6 14:49
 * @Description:
 */

class Solution {
    public static void main(String[] args) {
        moveZeroes(new int[]{0});

    }
    public static void moveZeroes(int[] nums) {
        int l = 0, r = nums.length-1;
        while(l < nums.length){
            if(nums[l] == 0){
                for(int i = l+1; i < nums.length; ++i){
                    if(nums[i] != 0){
                        nums[l] = nums[i];
                        nums[i] = 0;
                        break;
                    }
                }
                l++;
            }else{

                l++;
            }
        }
        System.out.println("Arrays.toString(nums) = " + Arrays.toString(nums));
    }
}
