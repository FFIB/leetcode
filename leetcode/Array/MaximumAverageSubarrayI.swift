//
//  MaximumAverageSubarrayI.swift
//  leetcode
//
//  Created by FFIB on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//643. Maximum Average Subarray I
/*
 Given an array consisting of n integers, find the contiguous subarray of given length k that has the maximum average value. And you need to output the maximum average value.
 
 Example 1:
 Input: [1,12,-5,-6,50,3], k = 4
 Output: 12.75
 Explanation: Maximum average is (12-5-6+50)/4 = 51/4 = 12.75
 Note:
 1 <= k <= n <= 30,000.
 Elements of the given array will be in the range [-10,000, 10,000].
 */
extension Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        if k > nums.count{
            return 0
        }
        var sum = nums[0..<k].reduce(0, +)
        var res = max(Int.min, sum)
        for i in k..<nums.count {
            sum = sum - nums[i - k] + nums[i]
            res = max(res, sum)
        }
        return Double(res) / Double(k)
    }
}

