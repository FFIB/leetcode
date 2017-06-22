//
//  FindMinimumRotatedSortedArrayII.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
