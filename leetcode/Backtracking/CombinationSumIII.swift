//
//  CombinationSumIII.swift
//  leetcode
//
//  Created by FFIB on 2017/7/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//216. Combination Sum III
/*
 Find all possible combinations of k numbers that add up to a number n, given that only numbers from 1 to 9 can be used and each combination should be a unique set of numbers.
 
 
 Example 1:
 
 Input: k = 3, n = 7
 
 Output:
 
 [[1,2,4]]
 
 Example 2:
 
 Input: k = 3, n = 9
 
 Output:
 
 [[1,2,6], [1,3,5], [2,3,4]]
 Credits:
 Special thanks to @mithmatt for adding this problem and creating all test cases.
 */
extension Solution {
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var res = [[Int]]()
        func search(start: Int, count: Int, sum: Int, nums: [Int]) {
            guard count <= k || sum <= n else {
                return
            }
            if count == k && sum == n{
                res.append(nums)
            }
            for i in 1..<10 {
                search(start: i + 1, count: count + 1, sum: sum + i, nums: nums + [i])
            }
        }
        search(start: 0, count: 0, sum: 0, nums: [Int]())
        return res
    }
}
