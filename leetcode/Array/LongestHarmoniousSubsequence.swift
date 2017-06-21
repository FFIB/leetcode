//
//  LongestHarmoniousSubsequence.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }
        var res = 0
        for (key, value) in dict {
            let next = (dict[key - 1] ?? 0) > (dict[key + 1] ?? 0) ? (dict[key - 1] ?? 0) : (dict[key + 1] ?? 0)
            if next != 0 {
                res = res > (value + next) ? res : (value + next)
            }
        }
        return res
    }
}
