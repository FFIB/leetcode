//
//  BaseballGame.swift
//  leetcode
//
//  Created by FFIB on 2017/10/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func calPoints(_ ops: [String]) -> Int {
        var last = [Int]()
        var ans = 0
        for op in ops {
            let val: Int
            switch op {
            case "C":
                ans -= last.removeLast()
                val = 0
            case "+":
                val = last.last! + last[last.count - 2]
            case "D":
                val = last.last! * 2
            default:
                val = Int(op)!
            }
            ans += val
            last.append(val)
        }
        return ans
    }
}
