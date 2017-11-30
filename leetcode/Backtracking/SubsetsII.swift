//
//  SubsetsII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//90. Subsets II
/*
 Given a collection of integers that might contain duplicates, nums, return all possible subsets (the power set).
 
 Note: The solution set must not contain duplicate subsets.
 
 For example,
 If nums = [1,2,2], a solution is:
 
 [
 [2],
 [1],
 [1,2,2],
 [2,2],
 [1,2],
 []
 ]
 */
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
