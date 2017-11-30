//
//  MaxConsecutiveOnes.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//485. Max Consecutive Ones
/*
 Given a binary array, find the maximum number of consecutive 1s in this array.
 
 Example 1:
 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
 The maximum number of consecutive 1s is 3.
 Note:
 
 The input array will only contain 0 and 1.
 The length of input array is a positive integer and will not exceed 10,000
 */
extension Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var consecutive = 0
        var maxConsecutive = 0
        for i in 0..<nums.count {
            consecutive = nums[i] == 0 ? 0 : consecutive + 1
            if maxConsecutive < consecutive {
                maxConsecutive = consecutive
            }
        }
        return maxConsecutive
    }
}
