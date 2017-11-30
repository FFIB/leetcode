//
//  SortColors.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//75. Sort Colors
/*
 Given an array with n objects colored red, white or blue, sort them so that objects of the same color are adjacent, with the colors in the order red, white and blue.
 
 Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.
 
 Note:
 You are not suppose to use the library's sort function for this problem.
 */
extension Solution {
    func sortColors(_ nums: inout [Int]) {
        var redCount = 0
        var whiteCount = 0
        for i in nums {
            if i == 0 {
                redCount += 1
            }else if i == 1 {
                whiteCount += 1
            }
        }
        var k = 0
        for _ in nums {
            if k < redCount {
                nums[k] = 0
            }
            if case redCount..<redCount + whiteCount = k{
                nums[k] = 1
            }
            if case redCount + whiteCount..<nums.count = k {
                nums[k] = 2
            }
            k += 1
        }
    }
}
