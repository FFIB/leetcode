//
//  UniquePathsII.swift
//  leetcode
//
//  Created by FFIB on 2017/10/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var dp = Array(repeating: 0,
                       count: obstacleGrid[0].count)
        dp[0] = 1
        for i in 0..<obstacleGrid.count {
            for j in 0..<obstacleGrid[i].count {
                if obstacleGrid[i][j] == 1 {
                    dp[j] = 0
                }else if j > 0 {
                    dp[j] += dp[j - 1]
                }
            }
        }
        return dp.last!
    }
}
