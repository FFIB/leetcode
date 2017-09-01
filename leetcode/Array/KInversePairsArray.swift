//
//  KInversePairsArray.swift
//  leetcode
//
//  Created by FFIB on 2017/9/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        let modulo = 1000000007
        var dp = [1]
        for i in 2..<n+1 {
            var ndp = [Int]()
            var num = 0
            for j in 0...min(1 + i * (i - 1) / 2, k + 1) {
                if j < dp.count {
                    num = (num + dp[j]) % modulo
                }
                if j >= i {
                    num = (modulo + num - dp[j - i]) % modulo
                }
                ndp.append(num)
            }
            dp = ndp
        }
        return k < dp.count ? dp[k] : 0
    }
}
