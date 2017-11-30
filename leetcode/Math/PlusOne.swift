//
//  PlusOne.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//66. Plus One
/*
 Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
 
 You may assume the integer do not contain any leading zero, except the number 0 itself.
 
 The digits are stored such that the most significant digit is at the head of the list.
 */
extension Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits
        for i in (0..<nums.count).reversed() {
            if nums[i] < 9 {
                nums[i] = nums[i] + 1
                return nums
            }
            nums[i] = 0
        }
        return [1] + nums
    }
}
