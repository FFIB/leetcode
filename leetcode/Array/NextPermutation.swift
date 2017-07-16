//
//  NextPermutation.swift
//  leetcode
//
//  Created by LISA on 2017/7/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
                    swap(&nums[index - 1], &nums[i])
                    break
                }
            }
        }
        for i in 0..<(nums.count - index) / 2 {
            swap(&nums[index + i], &nums[nums.count - i - 1])
        }
    }
}
