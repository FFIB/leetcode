//
//  GuessNumberHigherorLowerII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation


extension Solution {
    func getMoneyAmount(_ n: Int) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)
        for index in 1..<n {
            for i in 1...(n - index) {
                let j = i + index
                var maxNum = Int.max
                for k in i...j {
                    if k == i {
                        maxNum = maxNum < dp[k + 1][j] + k ? maxNum : dp[k + 1][j] + k
                    }else if k == j {
                        maxNum = maxNum < dp[i][j - 1] + k ? maxNum : dp[i][j - 1] + k
                    }else {
                        let val = k + max(dp[i][k - 1], dp[k + 1][j])
                        maxNum = maxNum < val ? maxNum : val
                    }
                }
                dp[i][j] = maxNum
            }
        }
        return dp[1][n]
    }
}
