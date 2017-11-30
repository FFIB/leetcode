//
//  MajorityElement.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//169. Majority Element
/*
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 
 You may assume that the array is non-empty and the majority element always exist in the array.
 
 Credits:
 Special thanks to @ts for adding this problem and creating all test cases.
 */
extension Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var max = 0
        var result = 0
        for i in nums {
            if dict[i] == nil{
                dict[i] = 1
            }else {
                dict[i] = dict[i]! + 1
            }
        }
        for i in dict.keys {
            if max < dict[i]! {
                max = dict[i]!
                result = i
            }
        }
        return result
    }
}
