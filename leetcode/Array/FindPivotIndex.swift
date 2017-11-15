//
//  FindPivotIndex.swift
//  leetcode
//
//  Created by FFIB on 2017/11/15.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var l = 0
        let sum = nums.reduce(0, +)
        var r = sum
        for (i, num) in nums.enumerated() {
            r -= num
            l = sum - r - num
            if l == r {
                return i
            }
        }
        return -1
    }
}
