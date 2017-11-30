//
//  MaximumSubarray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//53. Maximum Subarray
/*
 Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
 
 For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
 the contiguous subarray [4,-1,2,1] has the largest sum = 6.
 */
extension Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        var sum = 0
        for i in nums {
            sum = sum + i > i ? sum + i : i
            result = result > sum ? result : sum
        }
        return result
    }
}
