//
//  ShortestUnsortedContinuousSubarray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//581 Shortest Unsorted Continuous Subarray   
/*
 Given an integer array, you need to find one continuous subarray that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order, too.
 
 You need to find the shortest such subarray and output its length.
 
 Example 1:
 Input: [2, 6, 4, 8, 10, 9, 15]
 Output: 5
 Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.
 Note:
 Then length of the input array is in range [1, 10,000].
 The input array may contain duplicates, so ascending order here means <=.
 */
extension Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        var min = nums.first ?? 0
        var max = nums.last ?? 0
        var start = 0
        var end = 0
        for i in 0..<nums.count {
            if nums[i] >= min {
                min = nums[i]
            }else{
                start = i
            }
            
            if nums[nums.count - i - 1] <= max {
                max = nums[nums.count - i - 1]
            }else{
                end = nums.count - i - 1
            }
        }
        return start != end ? start - end + 1 : 0
    }
}
