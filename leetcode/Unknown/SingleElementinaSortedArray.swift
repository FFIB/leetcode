//
//  SingleElementinaSortedArray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//540. Single Element in a Sorted Array
/*
 Given a sorted array consisting of only integers where every element appears twice except for one element which appears once. Find this single element that appears only once.
 
 Example 1:
 Input: [1,1,2,3,3,4,4,8,8]
 Output: 2
 Example 2:
 Input: [3,3,7,7,10,11,11]
 Output: 10
 Note: Your solution should run in O(log n) time and O(1) space.
 */
extension Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        if nums.first != nums[1] {
            return nums.first!
        }
        if nums.last != nums[nums.count - 2] {
            return nums.last!
        }
        for i in 1..<nums.count - 1 {
            if nums[i] != nums[i + 1] && nums[i] != nums[i - 1] {
                return nums[i]
            }
        }
        return 0
    }
}
