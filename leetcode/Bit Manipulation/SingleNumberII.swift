//
//  SingleNumberII.swift
//  leetcode
//
//  Created by FFIB on 2017/11/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//137. Single Number II
/*
 Given an array of integers, every element appears three times except for one, which appears exactly once. Find that single one.
 
 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 */
extension Solution {
    func singleNumberII(_ nums: [Int]) -> Int {
        var one = 0
        var two = 0
        var three = 0
        for num in nums {
            two |= (one & num)
            one ^= num
            three = ~(one & two)
            one &= three
            two &= three
        }
        return one
    }
}
