//
//  ThreeSum.swift
//  leetcode
//
//  Created by FFIB on 2017/8/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//15. 3Sum
/*
 Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
 
 Note: The solution set must not contain duplicate triplets.
 
 For example, given array S = [-1, 0, 1, 2, -1, -4],
 
 A solution set is:
 [
 [-1, 0, 1],
 [-1, -1, 2]
 ]
 */
extension Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        let sortNums = nums.sorted()
        for i in 0..<sortNums.count {
            let target = sortNums[i]
            if i > 0 && sortNums[i] == sortNums[i - 1] {
                continue
            }
            var left = i + 1
            var right = sortNums.count - 1
            while left < right {
                let current = sortNums[left] + sortNums[right]
                if 0 - target == current {
                    res.append([sortNums[left], sortNums[right], target])
                    left += 1
                    right -= 1
                    while left < right && sortNums[left] == sortNums[left-1] { left += 1 }
                    while left < right && sortNums[right] == sortNums[right+1] { right -= 1 }
                }else if 0 - target > current {
                    left += 1
                }else {
                    right -= 1
                }
            }
        }
        return res
    }
}
