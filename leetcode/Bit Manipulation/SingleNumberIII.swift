//
//  SingleNumberIII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//260. Single Number III
/*
 Given an array of numbers nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once.
 
 For example:
 
 Given nums = [1, 2, 1, 3, 2, 5], return [3, 5].
 
 Note:
 The order of the result is not important. So in the above example, [5, 3] is also correct.
 Your algorithm should run in linear runtime complexity. Could you implement it using only constant space complexity?
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */
extension Solution {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var dict = [Int : Int]()
        for i in nums {
            if dict[i] == nil {
                dict[i] = 1
            }else {
                dict[i] = dict[i]! + 1
            }
        }
        var result = [Int]()
        dict.forEach{
            if $0.value == 1 {
                result.append($0.key)
            }
        }
        return result
    }
}
