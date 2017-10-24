//
//  ExclusiveTimeofFunctions.swift
//  leetcode
//
//  Created by FFIB on 2017/10/24.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {
        var ans = Array(repeating: 0, count: n)
        var stack = [Int]()
        var previousTimestamp = 0
        for log in logs {
            let chars = log.components(separatedBy: ":")
            let id = Int(chars[0])!
            let isStart = chars[1] == "start" ? true : false
            let timestamp = Int(chars[2])!
            if isStart {
                if let previousID = stack.last {
                    ans[previousID] += timestamp - previousTimestamp
                }
                previousTimestamp = timestamp
                stack.append(id)
            }else {
                ans[stack.removeLast()] += timestamp - previousTimestamp + 1
                previousTimestamp = timestamp + 1
            }
        }
        return ans
    }
}
