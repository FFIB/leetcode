//
//  PermutationsII.swift
//  leetcode
//
//  Created by FFIB on 2017/11/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//47. Permutations II
/*
 Given a collection of numbers that might contain duplicates, return all possible unique permutations.
 
 For example,
 [1,1,2] have the following unique permutations:
 [
 [1,1,2],
 [1,2,1],
 [2,1,1]
 ]
 */
extension Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var ans = [[Int]]()
        func permute(nums: [Int], index: Int) {
            if index == nums.count {
                ans.append(nums)
            }else {
                var candidate = nums
                for i in index..<candidate.count {
                    if index != i && candidate[i] == candidate[index] { continue }
                    candidate.swapAt(index, i)
                    permute(nums: candidate, index: index + 1)
                }
            }
        }
        permute(nums: nums.sorted(), index: 0)
        return ans
    }
}
