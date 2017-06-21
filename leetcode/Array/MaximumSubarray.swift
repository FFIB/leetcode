//
//  MaximumSubarray.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        var sum = 0
        for i in nums {
            sum = sum + i > i ? sum + i : i
            result = result > sum ? result : sum
        }
        return result
    }
}
