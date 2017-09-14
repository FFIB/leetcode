//
//  TrappingRainWater.swift
//  leetcode
//
//  Created by FFIB on 2017/9/14.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func trap(_ height: [Int]) -> Int {
        var ans = 0
        var left = 0, right = height.count - 1
        var max_left = 0, max_right = 0
        while left < right {
            if height[left] <= height[right] {
                max_left = max(max_left, height[left])
                ans += max_left - height[left]
                left += 1
            }else {
                max_right = max(max_right, height[right])
                ans += max_right - height[right]
                right -= 1
            }
            print(ans)
        }
        return ans
    }
}
