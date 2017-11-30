//
//  Permutations.swift
//  leetcode
//
//  Created by FFIB on 2017/7/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//46. Permutations
/*
 Given a collection of distinct numbers, return all possible permutations.
 
 For example,
 [1,2,3] have the following permutations:
 [
 [1,2,3],
 [1,3,2],
 [2,1,3],
 [2,3,1],
 [3,1,2],
 [3,2,1]
 ]
 */
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
