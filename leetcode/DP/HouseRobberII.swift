//
//  HouseRobberII.swift
//  leetcode
//
//  Created by FFIB on 2017/12/25.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//213. House Robber II
/*
 Note: This is an extension of House Robber.
 
 After robbing those houses on that street, the thief has found himself a new place for his thievery so that he will not get too much attention. This time, all houses at this place are arranged in a circle. That means the first house is the neighbor of the last one. Meanwhile, the security system for these houses remain the same as for those in the previous street.
 
 Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.
 
 Credits:
 Special thanks to @Freezen for adding this problem and creating all test cases.
 */
extension Solution {
    func rob(_ nums: [Int]) -> Int {
        func auxiliary(nums: [Int]) -> Int {
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
        guard nums.count > 1 else {
            return 0
        }
        var nums1 = nums
        var nums2 = nums
        nums1.removeFirst()
        nums2.removeLast()
        return max(auxiliary(nums: nums1), auxiliary(nums: nums2))
    }
}
