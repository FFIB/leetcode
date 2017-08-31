//
//  SlidingWindowMaximum.swift
//  leetcode
//
//  Created by FFIB on 2017/8/31.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        guard !nums.isEmpty && nums.count - k >= 0 else{
            return nums
        }
        var slider = nums[0..<k]
        var maxValue = slider.max()!
        var res = [maxValue]
        var i = k
        while i < nums.count {
            slider.append(nums[i])
            if maxValue == slider.removeFirst() {
                maxValue = slider.max()!
            }else {
                maxValue = max(maxValue, nums[i])
            }
            res.append(maxValue)
            i += 1
        }
        return res
    }
}
