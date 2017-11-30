//
//  WiggleSortII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//324. Wiggle Sort II
/*
 Given an unsorted array nums, reorder it such that nums[0] < nums[1] > nums[2] < nums[3]....
 
 Example:
 (1) Given nums = [1, 5, 1, 1, 6, 4], one possible answer is [1, 4, 1, 5, 1, 6].
 (2) Given nums = [1, 3, 2, 2, 3, 1], one possible answer is [2, 3, 1, 3, 1, 2].
 
 Note:
 You may assume all input has valid answer.
 
 Follow Up:
 Can you do it in O(n) time and/or in-place with O(1) extra space?
 
 Credits:
 Special thanks to @dietpepsi for adding this problem and creating all test cases.
 */
extension Solution {
    func wiggleSort(_ nums: inout [Int]) {
        var sortNums = nums.sorted()
        var k = (nums.count + 1) / 2 - 1
        var j = nums.count - 1
        for i in 0..<nums.count{
            if i & 1  == 1{
                nums[i] = sortNums[j]
                j -= 1
            }else {
                nums[i] = sortNums[k]
                k -= 1
            }
        }
    }
}
