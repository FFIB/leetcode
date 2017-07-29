//
//  CombinationSumIII.swift
//  leetcode
//
//  Created by LISA on 2017/7/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var res = [[Int]]()
        func search(start: Int, count: Int, sum: Int, nums: [Int]) {
            guard count <= k || sum <= n else {
                return
            }
            if count == k && sum == n{
                res.append(nums)
            }
            for i in 1..<10 {
                search(start: i + 1, count: count + 1, sum: sum + i, nums: nums + [i])
            }
        }
        search(start: 0, count: 0, sum: 0, nums: [Int]())
        return res
    }
}
