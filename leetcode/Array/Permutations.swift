//
//  Permutations.swift
//  leetcode
//
//  Created by LISA on 2017/7/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.count <= 1 {
            return [nums]
        }
        var res = [[Int]]()
        for (i, num) in nums.enumerated() {
            var tmp = nums
            tmp.remove(at: i)
            for n in permute(tmp) {
                res.append([num] + n)
            }
        }
        return res
    }
}
