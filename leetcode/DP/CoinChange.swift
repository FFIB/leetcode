//
//  CoinChange.swift
//  leetcode
//
//  Created by FFIB on 2017/11/5.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        let sum = coins.reduce(0, +)
        guard sum <= amount else {
            return -1
        }
        var dp = Array(repeating: -1, count: amount + 1)
        dp[0] = 0
        for num in 0..<amount {
            if dp[num] < 0 { continue }
            for coin in coins {
                guard coin + num <= amount else { continue }
                if dp[num + coin] < 0 || dp[num + coin] > dp[num] + 1 {
                    dp[num + coin] = dp[num] + 1
                }
            }
        }
        return dp[amount]
    }
}
