//
//  SearchinRotatedSortedArray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//33 Search in Rotated Sorted Array   
/*
 Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
 
 (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
 
 You are given a target value to search. If found in the array return its index, otherwise return -1.
 
 You may assume no duplicate exists in the array.
 */
extension Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count - 1
        while start <= end {
            let mid = (start + end) / 2
            if nums[mid] == target {
                return mid
            }else if nums[start] <= nums[mid] {
                if target < nums[mid] && target >= nums[start] {
                    end = mid - 1
                }else {
                    start = mid + 1
                }
            }else{
                if target > nums[mid] && target <= nums[end] {
                    start = mid + 1
                }else {
                    end = mid - 1
                }
            }
        }
        return -1
    }
}
