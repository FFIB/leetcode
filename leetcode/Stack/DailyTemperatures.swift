//
//  DailyTemperatures.swift
//  leetcode
//
//  Created by FFIB on 2017/12/6.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
