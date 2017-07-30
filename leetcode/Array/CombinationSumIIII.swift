//
//  CombinationSumIIII.swift
//  leetcode
//
//  Created by LISA on 2017/7/30.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
       var dp = Array(repeating: 0, count: target + 1)
        dp[0] = 1
        for i in 0..<target + 1 {
            for num in nums {
                if i + num <= target && Int.max - dp[num+i] > dp[i]{
                    dp[num+i] = dp[num+i] + dp[i]
                }
            }
        }
        return dp[target]
    }
}
