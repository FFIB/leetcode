//
//  Triangle.swift
//  leetcode
//
//  Created by LISA on 2017/7/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var dp = Array(repeating:0, count: triangle.count + 1)
        for i in (0..<triangle.count).reversed() {
            for j in 0..<triangle[i].count {
                print(dp)
                print(triangle[i][j])
                dp[j] = min(dp[j], dp[j + 1]) + triangle[i][j]
            }
        }
        return dp[0]
    }
}
