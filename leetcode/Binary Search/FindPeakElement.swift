//
//  FindPeakElement.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//162. Find Peak Element
/*
 A peak element is an element that is greater than its neighbors.
 
 Given an input array where num[i] ≠ num[i+1], find a peak element and return its index.
 
 The array may contain multiple peaks, in that case return the index to any one of the peaks is fine.
 
 You may imagine that num[-1] = num[n] = -∞.
 
 For example, in array [1, 2, 3, 1], 3 is a peak element and your function should return the index number 2.
 
 click to show spoilers.
 
 Credits:
 Special thanks to @ts for adding this problem and creating all test cases.
 */
extension Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        let max = nums.max() ?? 0
        for i in 0..<nums.count {
            if nums[i] == max {
                return i
            }
        }
        return -1
    }
}
