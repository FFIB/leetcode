//
//  ProductofArrayExceptSelf.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//238. Product of Array Except Self
/*
 Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
 
 Solve it without division and in O(n).
 
 For example, given [1,2,3,4], return [24,12,8,6].
 
 Follow up:
 Could you solve it with constant space complexity? (Note: The output array does not count as extra space for the purpose of space complexity analysis.)
 */

extension Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var zeroCount = 0
        let mult = nums.reduce(1, {
            if $1 != 0{
                return $0 * $1
            }else {
                zeroCount += 1
                return $0
            }
        })
        return nums.map{
            if zeroCount >= 2 {
                return 0
            }
            if $0 != 0 {
                if zeroCount == 1 {
                    return 0
                }
                return mult / $0
            }else{
                return mult
            }
        }
    }
}
