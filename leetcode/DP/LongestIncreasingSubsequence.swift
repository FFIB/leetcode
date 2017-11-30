//
//  LongestIncreasingSubsequence.swift
//  leetcode
//
//  Created by FFIB on 2017/11/7.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//300. Longest Increasing Subsequence
/*
 Given an unsorted array of integers, find the length of longest increasing subsequence.
 
 For example,
 Given [10, 9, 2, 5, 3, 7, 101, 18],
 The longest increasing subsequence is [2, 3, 7, 101], therefore the length is 4. Note that there may be more than one LIS combination, it is only necessary for you to return the length.
 
 Your algorithm should run in O(n2) complexity.
 
 Follow up: Could you improve it to O(n log n) time complexity?
 
 Credits:
 Special thanks to @pbrother for adding this problem and creating all test cases.
 */
extension Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var sortNums = [Int]()
        for num in nums {
            if sortNums.isEmpty || num > sortNums.last! {
                sortNums.append(num)
            }else {
                var l = 0, r = sortNums.count - 1
                while l < r {
                    let mid = (l + r) / 2
                    if sortNums[mid] < num {
                        l = mid + 1
                    }else {
                        r = mid
                    }
                }
                sortNums[l] = num
            }
        }
        return sortNums.count
    }
}
