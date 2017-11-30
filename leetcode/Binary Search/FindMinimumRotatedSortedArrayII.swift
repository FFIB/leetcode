//
//  FindMinimumRotatedSortedArrayII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//154. Find Minimum in Rotated Sorted Array II
/*
 Follow up for "Find Minimum in Rotated Sorted Array":
 What if duplicates are allowed?
 
 Would this affect the run-time complexity? How and why?
 Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
 
 (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
 
 Find the minimum element.
 
 The array may contain duplicates.
 */
extension Solution {
    func findMinII(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while left < right {
            if nums[left] < nums[right] {
                return nums[left]
            }
            let mid = left + (left + right) / 2
            if nums[mid] == nums[left] {
                left += 1
            }else if nums[mid] > nums[left] {
                left = mid + 1
            }else {
                right = mid
            }
        }
        return nums[left]
    }
}
