//
//  SortColors.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
