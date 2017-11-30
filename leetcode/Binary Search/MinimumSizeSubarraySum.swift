//
//  MinimumSizeSubarraySum.swift
//  leetcode
//
//  Created by FFIB on 2017/7/24.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//209. Minimum Size Subarray Sum
/*
 Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.
 
 For example, given the array [2,3,1,2,4,3] and s = 7,
 the subarray [4,3] has the minimal length under the problem constraint.
 
 click to show more practice.
 
 Credits:
 Special thanks to @Freezen for adding this problem and creating all test cases.
 */

extension Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var left = 0
        var right = 0
        var sum = 0
        var miniLen = nums.count + 1
        while right < nums.count {
            while right < nums.count && sum < s {
                sum += nums[right]
                right += 1
            }
            while left < right && sum >= s{
                miniLen = min(miniLen, right - left)
                sum -= nums[left]
                left += 1
            }
        }
        return miniLen > nums.count ? 0 : miniLen
    }
}
