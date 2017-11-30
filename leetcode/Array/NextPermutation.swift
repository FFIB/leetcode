//
//  NextPermutation.swift
//  leetcode
//
//  Created by FFIB on 2017/7/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//31. Next Permutation
/*
 Implement next permutation, which rearranges numbers into the lexicographically next greater permutation of numbers.
 
 If such arrangement is not possible, it must rearrange it as the lowest possible order (ie, sorted in ascending order).
 
 The replacement must be in-place, do not allocate extra memory.
 
 Here are some examples. Inputs are in the left-hand column and its corresponding outputs are in the right-hand column.
 1,2,3 → 1,3,2
 3,2,1 → 1,2,3
 1,1,5 → 1,5,1
 */
extension Solution {
    func nextPermutation(_ nums: inout [Int]) {
        var index = 0
        for i in (1..<nums.count).reversed() {
            if nums[i - 1] < nums[i] {
                index = i
                break
            }
        }
        if index > 0 {
            for i in (0..<nums.count).reversed() {
                if nums[i] < nums[index - 1] {
                    nums.swapAt(index - 1, i)
                    break
                }
            }
        }
        for i in 0..<(nums.count - index) / 2 {
            nums.swapAt(index + i, nums.count - i - 1)
        }
    }
}
