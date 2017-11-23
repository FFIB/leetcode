//
//  BurstBalloons.swift
//  leetcode
//
//  Created by FFIB on 2017/11/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxCoins(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        let count = nums.count
        let coins = [1] + nums + [1]
        var dp = Array(repeating: Array(repeating: 0, count: coins.count), count: coins.count)
        for size in 1...count {
            for start in 1...count where start + size - 1 <= count {
                let end = start + size - 1
                var value = Int.min
                for i in start...end {
                    var coin = coins[i] * coins[start - 1] * coins[end + 1]
                    coin += dp[start][i - 1] + dp[i + 1][end]
                    value = max(value, coin)
                }
                dp[start][end] = value
            }
        }
        return dp[1][count]
    }
}
