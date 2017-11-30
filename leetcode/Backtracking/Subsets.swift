//
//  Subsets.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//78. Subsets
/*
 Given a set of distinct integers, nums, return all possible subsets (the power set).
 
 Note: The solution set must not contain duplicate subsets.
 
 For example,
 If nums = [1,2,3], a solution is:
 
 [
 [3],
 [1],
 [2],
 [1,2,3],
 [1,3],
 [2,3],
 [1,2],
 []
 ]
 */
extension Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = [[]]
        for i in nums {
            let count = res.count
            for j in 0..<count{
                res.append(res[j] + [i])
            }
        }
        return res
    }
}
