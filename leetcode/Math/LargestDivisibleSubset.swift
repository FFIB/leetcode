//
//  LargestDivisibleSubset.swift
//  leetcode
//
//  Created by FFIB on 2017/8/13.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//368. Largest Divisible Subset
/*
 Given a set of distinct positive integers, find the largest subset such that every pair (Si, Sj) of elements in this subset satisfies: Si % Sj = 0 or Sj % Si = 0.
 
 If there are multiple solutions, return any subset is fine.
 
 Example 1:
 
 nums: [1,2,3]
 
 Result: [1,2] (of course, [1,3] will also be ok)
 Example 2:
 
 nums: [1,2,4,8]
 
 Result: [1,2,4,8]
 Credits:
 Special thanks to @Stomach_ache for adding this problem and creating all test cases.
 

 */
extension Solution {
    func largestDivisibleSubset(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else{
            return nums
        }
        let sortNums = nums.sorted()
        var arr = Array(repeating: 1, count: nums.count)
        var tmp = Array(repeating: -1, count: nums.count)
        for i in 1..<sortNums.count {
            for j in 0..<i {
                if nums[i] % nums[j] == 0 && arr[j] + 1 > arr[i] {
                    arr[i] = arr[j] + 1
                    tmp[i] = j
                }
            }
        }
        var index = arr.index(of: arr.max()!)!
        var res = [Int]()
        while index != -1 {
            res.append(sortNums[index])
            index = tmp[index]
        }
        return res.reversed()
    }
            
}
