//
//  SearchInsertPosition.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//35. Search Insert Position
/*
 Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 
 You may assume no duplicates in the array.
 
 Example 1:
 
 Input: [1,3,5,6], 5
 Output: 2
 Example 2:
 
 Input: [1,3,5,6], 2
 Output: 1
 Example 3:
 
 Input: [1,3,5,6], 7
 Output: 4
 Example 1:
 
 Input: [1,3,5,6], 0
 Output: 0
 */
extension Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            }else if nums[mid] < target {
                left = mid + 1
            }else{
                right = mid - 1
            }
        }
        return left
    }
}
