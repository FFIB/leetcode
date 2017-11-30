//
//  DegreeofanArray.swift
//  leetcode
//
//  Created by FFIB on 2017/10/15.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//697. Degree of an Array
/*
 Given a non-empty array of non-negative integers nums, the degree of this array is defined as the maximum frequency of any one of its elements.
 
 Your task is to find the smallest possible length of a (contiguous) subarray of nums, that has the same degree as nums.
 
 Example 1:
 Input: [1, 2, 2, 3, 1]
 Output: 2
 Explanation:
 The input array has a degree of 2 because both elements 1 and 2 appear twice.
 Of the subarrays that have the same degree:
 [1, 2, 2, 3, 1], [1, 2, 2, 3], [2, 2, 3, 1], [1, 2, 2], [2, 2, 3], [2, 2]
 The shortest length is 2. So return 2.
 Example 2:
 Input: [1,2,2,3,1,4,2]
 Output: 6
 Note:
 
 nums.length will be between 1 and 50,000.
 nums[i] will be an integer between 0 and 49,999.
 */
extension Solution {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        var dict = [Int: (Int, Int, Int)]()
        var maxCount = 0
        var ans = 0
        for (i, num) in nums.enumerated() {
            if dict[num] == nil {
                dict[num] = (1, i, i)
            }else {
                dict[num] = (dict[num]!.0 + 1, dict[num]?.1 ?? i, i)
            }
            if maxCount < dict[num]!.0 {
                maxCount = dict[num]!.0
                ans = dict[num]!.2 - dict[num]!.1 + 1
            }else if maxCount == dict[num]!.0 {
                ans = min(ans, dict[num]!.2 - dict[num]!.1 + 1)
            }
        }
        return ans
    }
}
