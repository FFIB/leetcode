//
//  DailyTemperatures.swift
//  leetcode
//
//  Created by FFIB on 2017/12/6.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//739. Daily Temperatures
/*
 Given a list of daily temperatures, produce a list that, for each day in the input, tells you how many days you would have to wait until a warmer temperature. If there is no future day for which this is possible, put 0 instead.
 
 For example, given the list temperatures = [73, 74, 75, 71, 69, 72, 76, 73], your output should be [1, 1, 4, 2, 1, 1, 0, 0].
 
 Note: The length of temperatures will be in the range [1, 30000]. Each temperature will be an integer in the range [30, 100].
 */
extension Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [(index: Int, value: Int)]()
        var ans = Array(repeating: 0, count: temperatures.count)
        for (i, t) in temperatures.enumerated() {
            while !stack.isEmpty && stack.last!.value < t {
                let top = stack.removeLast()
                ans[top.index] = i - top.index
            }
            stack.append((index: i,value: t))
        }
        return ans
    }
}
