//
//  CombinationSum.swift
//  leetcode
//
//  Created by LISA on 2017/7/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        dfs(candidates.sorted(), target: target, start: 0, path: &path, res: &res)
        return res
    }
    func dfs(_ candidates: [Int], target: Int,start: Int, path: inout [Int], res: inout [[Int]])  {
        if target == 0 {
           res.append(path)
        }
        for i in start..<candidates.count  where candidates[i] <= target {
            path.append(candidates[i])
            dfs(candidates, target: target - candidates[i], start: i, path: &path, res: &res)
            path.removeLast()
        }
    }
}
