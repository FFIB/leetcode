//
//  LongestHarmoniousSubsequence.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//594. Longest Harmonious Subsequence
/*
 We define a harmonious array is an array where the difference between its maximum value and its minimum value is exactly 1.
 
 Now, given an integer array, you need to find the length of its longest harmonious subsequence among all its possible subsequences.
 
 Example 1:
 Input: [1,3,2,2,5,2,3,7]
 Output: 5
 Explanation: The longest harmonious subsequence is [3,2,2,2,3].
 Note: The length of the input array will not exceed 20,000.
 */
extension Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }
        var res = 0
        for (key, value) in dict {
            let next = (dict[key - 1] ?? 0) > (dict[key + 1] ?? 0) ? (dict[key - 1] ?? 0) : (dict[key + 1] ?? 0)
            if next != 0 {
                res = res > (value + next) ? res : (value + next)
            }
        }
        return res
    }
}
