//
//  UniquePathsII.swift
//  leetcode
//
//  Created by FFIB on 2017/10/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//63. Unique Paths II
/*
 Follow up for "Unique Paths":
 
 Now consider if some obstacles are added to the grids. How many unique paths would there be?
 
 An obstacle and empty space is marked as 1 and 0 respectively in the grid.
 
 For example,
 There is one obstacle in the middle of a 3x3 grid as illustrated below.
 
 [
 [0,0,0],
 [0,1,0],
 [0,0,0]
 ]
 The total number of unique paths is 2.
 
 Note: m and n will be at most 100.
 */
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
