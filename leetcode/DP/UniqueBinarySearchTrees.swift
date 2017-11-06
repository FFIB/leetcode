//
//  UniqueBinarySearchTrees.swift
//  leetcode
//
//  Created by FFIB on 2017/11/6.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func numTrees(_ n: Int) -> Int {
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        for i in 1...n {
            for j in 0..<i {
                dp[i] += dp[j] * dp[i - 1 - j]
            }
        }
        return dp[n]
    }
}
