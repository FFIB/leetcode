//
//  SingleNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//136. Single Number
/*
 Given an array of integers, every element appears twice except for one. Find that single one.
 
 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 */
extension Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for i in 0..<nums.count {
            result ^= nums[i]
        }
        return result
    }
}
