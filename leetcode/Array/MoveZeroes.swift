//
//  MoveZeroes.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//283. Move Zeroes
/*
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
 
 Note:
 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */

extension Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount = 0
        for i in 0..<nums.count {
            while nums[i] == 0 {
                zeroCount += 1
                nums.append(nums[i])
                nums.remove(at: i)
                if zeroCount >= nums.count - i {
                    return
                }
            }
        }
    }
}
