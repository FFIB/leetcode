//
//  LongestContinuousIncreasingSubsequence.swift
//  leetcode
//
//  Created by FFIB on 2017/9/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var ans = 0
        var tmp = 1
        for i in 0..<nums.count where i > 0 {
            if nums[i] > nums[i - 1] {
                tmp += 1
                ans = max(tmp, ans)
            }else {
                tmp = 1
            }
        }
        return ans
    }
}
