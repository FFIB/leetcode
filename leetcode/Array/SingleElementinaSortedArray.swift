//
//  SingleElementinaSortedArray.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        if nums.first != nums[1] {
            return nums.first!
        }
        if nums.last != nums[nums.count - 2] {
            return nums.last!
        }
        for i in 1..<nums.count - 1 {
            if nums[i] != nums[i + 1] && nums[i] != nums[i - 1] {
                return nums[i]
            }
        }
        return 0
    }
}
