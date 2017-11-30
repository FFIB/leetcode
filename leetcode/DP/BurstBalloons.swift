//
//  BurstBalloons.swift
//  leetcode
//
//  Created by FFIB on 2017/11/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//312. Burst Balloons
/*
 Given n balloons, indexed from 0 to n-1. Each balloon is painted with a number on it represented by array nums. You are asked to burst all the balloons. If the you burst balloon i you will get nums[left] * nums[i] * nums[right] coins. Here left and right are adjacent indices of i. After the burst, the left and right then becomes adjacent.
 
 Find the maximum coins you can collect by bursting the balloons wisely.
 
 Note:
 (1) You may imagine nums[-1] = nums[n] = 1. They are not real therefore you can not burst them.
 (2) 0 ≤ n ≤ 500, 0 ≤ nums[i] ≤ 100
 
 Example:
 
 Given [3, 1, 5, 8]
 
 Return 167
 
 nums = [3,1,5,8] --> [3,5,8] -->   [3,8]   -->  [8]  --> []
 coins =  3*1*5      +  3*5*8    +  1*3*8      + 1*8*1   = 167
 Credits:
 Special thanks to @dietpepsi for adding this problem and creating all test cases.
 */
extension Solution {
    func maxCoins(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        let count = nums.count
        let coins = [1] + nums + [1]
        var dp = Array(repeating: Array(repeating: 0, count: coins.count), count: coins.count)
        for size in 1...count {
            for start in 1...count where start + size - 1 <= count {
                let end = start + size - 1
                var value = Int.min
                for i in start...end {
                    var coin = coins[i] * coins[start - 1] * coins[end + 1]
                    coin += dp[start][i - 1] + dp[i + 1][end]
                    value = max(value, coin)
                }
                dp[start][end] = value
            }
        }
        return dp[1][count]
    }
}
