//
//  TargetSum.swift
//  leetcode
//
//  Created by FFIB on 2017/10/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//494. Target Sum
/*
 You are given a list of non-negative integers, a1, a2, ..., an, and a target, S. Now you have 2 symbols + and -. For each integer, you should choose one from + and - as its new symbol.
 
 Find out how many ways to assign symbols to make sum of integers equal to target S.
 
 Example 1:
 Input: nums is [1, 1, 1, 1, 1], S is 3.
 Output: 5
 Explanation:
 
 -1+1+1+1+1 = 3
 +1-1+1+1+1 = 3
 +1+1-1+1+1 = 3
 +1+1+1-1+1 = 3
 +1+1+1+1-1 = 3
 
 There are 5 ways to assign symbols to make the sum of nums be target 3.
 Note:
 The length of the given array is positive and will not exceed 20.
 The sum of elements in the given array will not exceed 1000.
 Your output answer is guaranteed to be fitted in a 32-bit integer.
 */
extension Solution {
    func findTargetSumWays(_ nums: [Int], _ S: Int) -> Int {
        var sum = nums.reduce(0, +)
        guard S <= sum,
            (sum + S) % 2 == 0 else{ return 0 }
        var dp = Array(repeating: 0, count: sum + 1)
        dp[0] = 1
        sum = (sum + S) / 2
        for num in nums {
            guard num < dp.count else{ continue }
            for i in (num..<dp.count).reversed() {
                dp[i] += dp[i - num]
            }
        }
        return dp[sum]
    }
}
