//
//  SetMismatch.swift
//  leetcode
//
//  Created by FFIB on 2017/7/31.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//645. Set Mismatch
/*
 The set S originally contains numbers from 1 to n. But unfortunately, due to the data error, one of the numbers in the set got duplicated to another number in the set, which results in repetition of one number and loss of another number.
 
 Given an array nums representing the data status of this set after the error. Your task is to firstly find the number occurs twice and then find the number that is missing. Return them in the form of an array.
 
 Example 1:
 Input: nums = [1,2,2,4]
 Output: [2,3]
 Note:
 The given array size will in the range [2, 10000].
 The given array's numbers won't have any order.
 */
extension Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            }else {
                return [num, (1 + nums.count) * nums.count / 2 - nums.reduce(0, +) + num]
                
            }
        }
        return [0, 1]
    }
}
