//
//  PartitiontoKEqualSumSubsets.swift
//  leetcode
//
//  Created by FFIB on 22/03/2018.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//698. Partition to K Equal Sum Subsets
/*
 Given an array of integers nums and a positive integer k, find whether it's possible to divide this array into k non-empty subsets whose sums are all equal.

 Example 1:
 Input: nums = [4, 3, 2, 3, 5, 2, 1], k = 4
 Output: True
 Explanation: It's possible to divide it into 4 subsets (5), (1, 4), (2,3), (2,3) with equal sums.
 */
extension Solution {
    func canPartitionKSubsets(_ nums: [Int], _ k: Int) -> Bool {
        let sum = nums.reduce(0, +)
        var visted = Array(repeating: false, count: nums.count)
        guard nums.count > k, sum % k == 0 else { return false }
        let target = sum / k

        func canPartition(k: Int, currentSum: Int, currentNum: Int, start: Int) -> Bool {
            if k == 1 { return true }
            if currentSum == target && currentNum > 0 {
                return divide(k: k - 1, currentSum: 0, currentNum: 0, start: 0)
            }
            for i in start..<nums.count {
                if !visted[i] {
                    if nums[i] + currentNum > target { continue }
                    visted[i] = true
                    if canPartition(k: k, currentSum: currentSum + nums[i], currentNum: currentNum + 1, start: i + 1) {
                        return true
                    }
                    visted[i] = false
                }
            }
            return false
        }

        return canPartition(k: k, currentSum: 0, currentNum: 0, start: 0)
    }
}
