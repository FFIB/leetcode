//
//  CombinationSumII.swift
//  leetcode
//
//  Created by LISA on 2017/7/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        combinationDfs2(candidates.sorted(), target: target, start: 0, path: &path, res: &res)
        return res
    }
    func combinationDfs2(_ candidates: [Int], target: Int,start: Int, path: inout [Int], res: inout [[Int]])  {
        if target == 0 {
            res.append(path)
            return
        }
        for i in start..<candidates.count  where candidates[i] <= target {
            if i > start && candidates[i] == candidates[i - 1] {
                continue
            }
            path.append(candidates[i])
            combinationDfs2(candidates, target: target - candidates[i], start: i + 1, path: &path, res: &res)
            path.removeLast()
        }
    }
}
