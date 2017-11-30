//
//  FindMinimuminRotatedSortedArray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//153. Find Minimum in Rotated Sorted Array
/*
 Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
 
 (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
 
 Find the minimum element.
 
 You may assume no duplicate exists in the array.
 */
extension Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while left < right {
            if nums[left] < nums[right] {
                return nums[left]
            }
            let mid = (left + right) / 2
            if nums[mid] >= nums[left] {
                left = mid + 1
            }else {
                right = mid
            }
        }
        return nums[left]
    }
}
