//
//  MissingNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//268. Missing Number
/*
 Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.
 
 For example,
 Given nums = [0, 1, 3] return 2.
 
 Note:
 Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */

extension Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum = 0
        for i in nums {
            sum += i
        }
        return (nums.count * (nums.count + 1)) / 2 - sum
    }
    
}
