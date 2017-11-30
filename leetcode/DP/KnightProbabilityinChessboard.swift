//
//  KnightProbabilityinChessboard.swift
//  leetcode
//
//  Created by FFIB on 2017/10/31.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//688. Knight Probability in Chessboard
/*
 On an NxN chessboard, a knight starts at the r-th row and c-th column and attempts to make exactly K moves. The rows and columns are 0 indexed, so the top-left square is (0, 0), and the bottom-right square is (N-1, N-1).
 
 A chess knight has 8 possible moves it can make, as illustrated below. Each move is two squares in a cardinal direction, then one square in an orthogonal direction.
 
 
 Each time the knight is to move, it chooses one of eight possible moves uniformly at random (even if the piece would go off the chessboard) and moves there.
 
 The knight continues moving until it has made exactly K moves or has moved off the chessboard. Return the probability that the knight remains on the board after it has stopped moving.
 
 Example:
 Input: 3, 2, 0, 0
 Output: 0.0625
 Explanation: There are two moves (to (1,2), (2,1)) that will keep the knight on the board.
 From each of those positions, there are also two moves that will keep the knight on the board.
 The total probability the knight stays on the board is 0.0625.
 Note:
 N will be between 1 and 25.
 K will be between 0 and 100.
 The knight always initially starts on the board.
 */
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
