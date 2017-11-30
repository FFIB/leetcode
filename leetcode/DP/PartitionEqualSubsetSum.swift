//
//  PartitionEqualSubsetSum.swift
//  leetcode
//
//  Created by FFIB on 2017/9/5.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//416. Partition Equal Subset Sum
/*
 Given a non-empty array containing only positive integers, find if the array can be partitioned into two subsets such that the sum of elements in both subsets is equal.
 
 Note:
 Each of the array element will not exceed 100.
 The array size will not exceed 200.
 Example 1:
 
 Input: [1, 5, 11, 5]
 
 Output: true
 
 Explanation: The array can be partitioned as [1, 5, 5] and [11].
 Example 2:
 
 Input: [1, 2, 3, 5]
 
 Output: false
 
 Explanation: The array cannot be partitioned into equal sum subsets.
 */
extension Solution {
    func canPartition(_ nums: [Int]) -> Bool {
        var sum = nums.reduce(0, +)
        guard !nums.isEmpty, sum % 2 == 0 else { return false }
        sum /= 2
        let sortNums = nums.sorted()
        var dp = Set([0])
        for num in sortNums {
            if num > sum {
                break
            }
            for m in dp {
                dp.insert(m + num)
            }
        }
        return dp.contains(sum)
    }
}
