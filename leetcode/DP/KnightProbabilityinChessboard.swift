//
//  KnightProbabilityinChessboard.swift
//  leetcode
//
//  Created by FFIB on 2017/10/31.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func knightProbability(_ N: Int, _ K: Int, _ r: Int, _ c: Int) -> Double {
        let dxs = [-2, -2, -1, -1, 1, 1, 2, 2]
        let dys = [-1, 1, -2, 2, -2, 2, -1, 1]
        var dp = Array(repeating: Array(repeating: 0.0, count: N), count: N)
        dp[r][c] = 1
        var ans = 0.0
        for _ in 0..<K {
            var dp1 = Array(repeating: Array(repeating: 0.0, count: N), count: N)
            for i in 0..<dp.count {
                for j in 0..<dp[0].count {
                    for (dx, dy) in zip(dxs, dys) {
                        let current = (i + dx, j + dy)
                        if current.0 < 0 || current.0 >= N || current.1 < 0 || current.1 >= N {
                            ans += dp[i][j] * 0.125
                        }else {
                            dp1[current.0][current.1] += dp[i][j] * 0.125
                        }
                    }
                }
            }
            dp = dp1
        }
        return 1 - ans
    }
}
