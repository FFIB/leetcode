//
//  HouseRobber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//198. House Robber
/*
 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.
 
 Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.
 
 Credits:
 Special thanks to @ifanchu for adding this problem and creating all test cases. Also thanks to @ts for adding additional test cases.
 */
extension Solution {
    func robI(_ nums: [Int]) -> Int {
        var even = 0
        var odd = 0
        for i in 0..<nums.count {
            if i % 2 == 0 {
                even = max(even + nums[i], odd)
            }else {
                odd = max(odd + nums[i], even)
            }
        }
        return max(even, odd)
    }
}
