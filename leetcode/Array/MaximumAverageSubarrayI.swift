//
//  MaximumAverageSubarrayI.swift
//  leetcode
//
//  Created by LISA on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        if k > nums.count{
            return 0
        }
        var sum = nums[0..<k].reduce(0, +)
        var res = max(Int.min, sum)
        for i in k..<nums.count {
            sum = sum - nums[i - k] + nums[i]
            res = max(res, sum)
        }
        return Double(res) / Double(k)
    }
}

