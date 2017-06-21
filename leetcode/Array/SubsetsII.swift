//
//  SubsetsII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = [[]]
        var last = 0
        let sortNums = nums.sorted()
        for i in 0..<sortNums.count {
            let count = res.count
            for j in 0..<count{
                if i == 0 || sortNums[i] != sortNums[i - 1] || j >= last {
                    res.append(res[j] + [sortNums[i]])
                }
            }
            last = count
        }
        return res
    }
}
