//
//  UniquePaths.swift
//  leetcode
//
//  Created by FFIB on 2017/10/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
