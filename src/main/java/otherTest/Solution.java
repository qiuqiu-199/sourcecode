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
    public int[] twoSum(int[] nums, int target) {
        Map<Integer,Integer> map = new HashMap<>();
        map.put(nums[0],0);

        for(int i = 1;i < nums.length; ++i){
            int retain = target - nums[i];
            if(map.keySet().contains(retain)) return new int[]{map.get(retain),i};
            else{
                map.put(nums[i],i);
            }
        }
        return new int[0];
    }

    public static void main(String[] args) {
        String s = "anagram", t = "nagaram";
//        isAnagram(s,t);

    }
}
