//
//  SubarraySumEqualsK.swift
//  leetcode
//
//  Created by FFIB on 2017/8/5.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//560. Subarray Sum Equals K
/*
 Given an array of integers and an integer k, you need to find the total number of continuous subarrays whose sum equals to k.
 
 Example 1:
 Input:nums = [1,1,1], k = 2
 Output: 2
 Note:
 The length of the array is in range [1, 20,000].
 The range of numbers in the array is [-1000, 1000] and the range of the integer k is [-1e7, 1e7].
 */
extension Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var counts = [Int: Int]()
        var res = 0
        var sum = 0
        for num in nums {
            counts[sum] = (counts[sum] ?? 0) + 1
            sum += num
            res += counts[sum - k] ?? 0
        }
        return res
    }
}
