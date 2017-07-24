//
//  MinimumSizeSubarraySum.swift
//  leetcode
//
//  Created by LISA on 2017/7/24.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var left = 0
        var right = 0
        var sum = 0
        var miniLen = nums.count + 1
        while right < nums.count {
            while right < nums.count && sum < s {
                sum += nums[right]
                right += 1
            }
            while left < right && sum >= s{
                miniLen = min(miniLen, right - left)
                sum -= nums[left]
                left += 1
            }
        }
        return miniLen > nums.count ? 0 : miniLen
    }
}
