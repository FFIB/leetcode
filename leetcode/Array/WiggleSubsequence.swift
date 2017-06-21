//
//  WiggleSubsequence.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution  {
    func wiggleMaxLength(_ nums: [Int]) -> Int {
        if nums.count < 2 {
            return nums.count
        }
        var res = 1
        var last = 0
        for i in 1..<nums.count {
            if nums[i] < nums[i - 1] {
                if last != 1 {
                    res += 1
                    last = 1
                }
            }
            if nums[i] > nums[i - 1] {
                if last != -1 {
                    res += 1
                    last = -1
                }
            }
        }
        return res
    }
}
