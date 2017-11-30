//
//  SearchinRotatedSortedArrayII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//81. Search in Rotated Sorted Array II
/*
 Follow up for "Search in Rotated Sorted Array":
 What if duplicates are allowed?
 
 Would this affect the run-time complexity? How and why?
 Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
 
 (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
 
 Write a function to determine if a given target is in the array.
 
 The array may contain duplicates.
 */
extension Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        for num in nums {
            if num == target {
                return true
            }
        }
        return false
    }
}
