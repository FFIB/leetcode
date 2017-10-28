//
//  MinimumPathSum.swift
//  leetcode
//
//  Created by FFIB on 2017/10/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        guard !grid.isEmpty else { return 0 }
        var dp = Array(repeating: Int.max, count: grid[0].count + 1)
        dp[1] = 0
        for _ in 0..<grid.count {
            for j in 0..<grid[0].count {
                dp[j + 1] = dp[j] + min(dp[j + 1], dp[j])
            }
        }
        return dp.last!
    }
}
