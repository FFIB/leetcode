//
//  MinimumPathSum.swift
//  leetcode
//
//  Created by FFIB on 2017/10/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//64. Minimum Path Sum
/*
 Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.
 
 Note: You can only move either down or right at any point in time.
 
 Example 1:
 [[1,3,1],
 [1,5,1],
 [4,2,1]]
 Given the above grid map, return 7. Because the path 1→3→1→1→1 minimizes the sum.

 */
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
