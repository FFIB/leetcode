//
//  SubarrayProductLessThanK.swift
//  leetcode
//
//  Created by FFIB on 2017/10/22.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//713. Subarray Product Less Than K
/*
 Your are given an array of positive integers nums.
 
 Count and print the number of (contiguous) subarrays where the product of all the elements in the subarray is less than k.
 
 Example 1:
 Input: nums = [10, 5, 2, 6], k = 100
 Output: 8
 Explanation: The 8 subarrays that have product less than 100 are: [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6].
 Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.
 Note:
 
 0 < nums.length <= 50000.
 0 < nums[i] < 1000.
 0 <= k < 10^6.
 */
extension Solution {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        if k <= 1 { return 0 }
        var prod = 1
        var ans = 0
        var j = 0
        for i in 0..<nums.count {
            if i > 0 && i <= j {
                prod /= nums[i - 1]
            }else {
                j = i
            }
            while j < nums.count && prod * nums[j] < k {
                prod *= nums[j]
                j += 1
            }
            ans += j - i
        }
        return ans
    }
}
