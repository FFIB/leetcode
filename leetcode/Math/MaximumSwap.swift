//
//  MaximumSwap.swift
//  leetcode
//
//  Created by FFIB on 2017/9/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//670. Maximum Swap
/*
 Given a non-negative integer, you could swap two digits at most once to get the maximum valued number. Return the maximum valued number you could get.
 
 Example 1:
 Input: 2736
 Output: 7236
 Explanation: Swap the number 2 and the number 7.
 Example 2:
 Input: 9973
 Output: 9973
 Explanation: No swap.
 Note:
 The given number is in the range [0, 108]
 */
extension Solution {
    func maximumSwap(_ num: Int) -> Int {
        var nums = "\(num)".map{String($0)}
        let sortNums = nums.sorted{$0 > $1}
        for (i, (num1, num2)) in zip(nums, sortNums).enumerated() where num1 != num2{
            var index = 0
            for j in (i+1..<nums.count).reversed() where nums[j] == num2 {
                index = j
                break
            }
            nums[index] = num1
            nums[i] = num2
            break
        }
        return Int(nums.joined()) ?? 0
    }
}
