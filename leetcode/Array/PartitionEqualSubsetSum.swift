//
//  PartitionEqualSubsetSum.swift
//  leetcode
//
//  Created by FFIB on 2017/9/5.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func canPartition(_ nums: [Int]) -> Bool {
        var sum = nums.reduce(0, +)
        guard !nums.isEmpty, sum % 2 == 0 else { return false }
        sum /= 2
        let sortNums = nums.sorted()
        var dp = Set([0])
        for num in sortNums {
            if num > sum {
                break
            }
            for m in dp {
                dp.insert(m + num)
            }
        }
        return dp.contains(sum)
    }
}
