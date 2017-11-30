//
//  CombinationSumII.swift
//  leetcode
//
//  Created by FFIB on 2017/7/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//40. Combination Sum II
/*
 Given a collection of candidate numbers (C) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.
 
 Each number in C may only be used once in the combination.
 
 Note:
 All numbers (including target) will be positive integers.
 The solution set must not contain duplicate combinations.
 For example, given candidate set [10, 1, 2, 7, 6, 1, 5] and target 8,
 A solution set is:
 [
 [1, 7],
 [1, 2, 5],
 [2, 6],
 [1, 1, 6]
 ]
 */
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
