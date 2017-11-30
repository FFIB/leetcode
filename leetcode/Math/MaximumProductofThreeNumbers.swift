//
//  MaximumProductofThreeNumbers.swift
//  leetcode
//
//  Created by FFIB on 2017/6/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//628. Maximum Product of Three Numbers
/*
 Given an integer array, find three numbers whose product is maximum and output the maximum product.
 
 Example 1:
 Input: [1,2,3]
 Output: 6
 Example 2:
 Input: [1,2,3,4]
 Output: 24
 Note:
 The length of the given array will be in range [3,104] and all elements are in the range [-1000, 1000].
 Multiplication of any three numbers in the input won't exceed the range of 32-bit signed integer.
 */
extension Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return 0
        }
        let sort = nums.sorted()
        if sort.count >= 3 {
            var res = sort[sort.count - 1] * sort[sort.count - 2] *  sort[sort.count - 3]
            res = max(res, sort[0] * sort[1] * sort[sort.count - 1])
            return res
        }else{
            return 0
        }
    }
}
