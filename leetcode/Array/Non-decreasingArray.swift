//
//  Non-decreasingArray.swift
//  leetcode
//
//  Created by FFIB on 2017/9/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//665. Non-decreasing Array
/*
 Given an array with n integers, your task is to check if it could become non-decreasing by modifying at most 1 element.
 
 We define an array is non-decreasing if array[i] <= array[i + 1] holds for every i (1 <= i < n).
 
 Example 1:
 Input: [4,2,3]
 Output: True
 Explanation: You could modify the first
 4
 to
 1
 to get a non-decreasing array.
 Example 2:
 Input: [4,2,1]
 Output: False
 Explanation: You can't get a non-decreasing array by modify at most one element.
 Note: The n belongs to [1, 10,000].
 */
extension Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        guard nums.count > 2 else { return true }
        var isChanced = false
        var prev = nums.first!
        for i in 1 ..< nums.count {
            if prev > nums[i] {
                if isChanced {
                    return false
                }
                if i + 1 == nums.count {
                    return true
                }
                
                isChanced = true
                
                if (i < 2 || nums[i - 2] <= nums[i]) {
                    prev = nums[i]
                } else if prev > nums[i + 1]  {
                    return false
                }
            } else {
                prev = nums[i]
            }
        }
        return true
    }
}
