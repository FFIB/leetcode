//
//  UniquePaths.swift
//  leetcode
//
//  Created by FFIB on 2017/10/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//62. Unique Paths
/*
 A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).
 
 The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).
 
 How many possible unique paths are there?
 
 
 Above is a 3 x 7 grid. How many possible unique paths are there?
 
 Note: m and n will be at most 100.
 */
extension Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = Array(repeating: 1, count: n)
        for _ in 1..<m {
            for j in 1..<n {
                dp[j] = dp[j] + dp[j - 1]
            }
        }
        return dp[n - 1]
    }
}
