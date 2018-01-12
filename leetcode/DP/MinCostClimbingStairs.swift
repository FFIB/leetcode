//
//  MinCostClimbingStairs.swift
//  leetcode
//
//  Created by FFIB on 2018/1/12.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//746. Min Cost Climbing Stairs
/*
 On a staircase, the i-th step has some non-negative cost cost[i] assigned (0 indexed).
 
 Once you pay the cost, you can either climb one or two steps. You need to find minimum cost to reach the top of the floor, and you can either start from the step with index 0, or the step with index 1.
 
 Example 1:
 Input: cost = [10, 15, 20]
 Output: 15
 Explanation: Cheapest is start on cost[1], pay that cost and go to the top.
 Example 2:
 Input: cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
 Output: 6
 Explanation: Cheapest is start on cost[0], and only step on 1s, skipping cost[3].
 */
extension Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        guard cost.count > 1 else { return cost.last ?? 0 }
        var dp = [cost[0], cost[1]]
        for i in 2..<cost.count {
            dp.append(min(dp[i - 1], dp[i - 2]) + cost[i])
        }
        return min(dp[dp.count - 1], dp[dp.count - 2])
    }
}
