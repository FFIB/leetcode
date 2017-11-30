//
//  IncreasingTripletSubsequence.swift
//  leetcode
//
//  Created by FFIB on 2017/6/22.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//334. Increasing Triplet Subsequence
/*
 Given an unsorted array return whether an increasing subsequence of length 3 exists or not in the array.
 
 Formally the function should:
 Return true if there exists i, j, k
 such that arr[i] < arr[j] < arr[k] given 0 ≤ i < j < k ≤ n-1 else return false.
 Your algorithm should run in O(n) time complexity and O(1) space complexity.
 
 Examples:
 Given [1, 2, 3, 4, 5],
 return true.
 
 Given [5, 4, 3, 2, 1],
 return false.
 
 Credits:
 Special thanks to @DjangoUnchained for adding this problem and creating all test cases.
 */
extension Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var first = nums.max()!
        var second = nums.max()!
        for num in nums {
            switch num {
            case let x where first > x:
                first = x
            case let x where second > x && x > first:
                second = x
            case let x where second < x:
                return false
            default:
                continue
            }
        }
        return false
    }
}
