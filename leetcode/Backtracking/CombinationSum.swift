//
//  CombinationSum.swift
//  leetcode
//
//  Created by FFIB on 2017/7/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//39. Combination Sum
/*
 Given a set of candidate numbers (C) (without duplicates) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.
 
 The same repeated number may be chosen from C unlimited number of times.
 
 Note:
 All numbers (including target) will be positive integers.
 The solution set must not contain duplicate combinations.
 For example, given candidate set [2, 3, 6, 7] and target 7,
 A solution set is:
 [
 [7],
 [2, 2, 3]
 ]
 */
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
