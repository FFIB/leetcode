//
//  MaximalSquare.swift
//  leetcode
//
//  Created by FFIB on 2017/7/2.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//221. Maximal Square
/*
 Given a 2D binary matrix filled with 0's and 1's, find the largest square containing only 1's and return its area.
 
 For example, given the following matrix:
 
 1 0 1 0 0
 1 0 1 1 1
 1 1 1 1 1
 1 0 0 1 0
 Return 4.
 Credits:
 Special thanks to @Freezen for adding this problem and creating all test cases.
 */
extension Solution {
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        var res = 0
        var dp = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                dp[i][j] = Int(String(matrix[i][j]))!
                if i > 0 && j > 0 && matrix[i][j] == Character("1") {
                    let first = min(dp[i - 1][j - 1], dp[i][j - 1])
                    dp[i][j] = min(first, dp[i - 1][j]) + 1
                }
                print(dp)
                res = max(res, dp[i][j])
            }
        }
        return res * res
    }
}
