//
//  TargetSum.swift
//  leetcode
//
//  Created by FFIB on 2017/10/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findTargetSumWays(_ nums: [Int], _ S: Int) -> Int {
        var sum = nums.reduce(0, +)
        guard S <= sum,
            (sum + S) % 2 == 0 else{ return 0 }
        var dp = Array(repeating: 0, count: sum + 1)
        dp[0] = 1
        sum = (sum + S) / 2
        for num in nums {
            guard num < dp.count else{ continue }
            for i in (num..<dp.count).reversed() {
                dp[i] += dp[i - num]
            }
        }
        return dp[sum]
    }
}
