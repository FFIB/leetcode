//
//  TwoSumII-Inputarrayissorted.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//167. Two Sum II - Input array is sorted
/*
 Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
 
 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
 
 You may assume that each input would have exactly one solution and you may not use the same element twice.
 
 Input: numbers={2, 7, 11, 15}, target=9
 Output: index1=1, index2=2
 */

extension Solution {
    func twoSumII(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1, right + 1]
            }else if sum < target {
                left += 1
            }else {
                right -= 1
            }
        }
        return []
        
    }
}
