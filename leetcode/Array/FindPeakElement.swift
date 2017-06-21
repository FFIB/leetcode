//
//  FindPeakElement.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
