//
//  TwoSum.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//1. Two Sum
/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */
extension Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var digitalDic : [Int : Int] = [:]
        for (index, value) in nums.enumerated() {
            if let matchIndex = digitalDic[target - value] {
                return [matchIndex, index]
            }
            digitalDic[value] = index
        }
        
        return []
    }
    
}
