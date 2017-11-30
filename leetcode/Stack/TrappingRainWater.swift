//
//  TrappingRainWater.swift
//  leetcode
//
//  Created by FFIB on 2017/9/14.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//42. Trapping Rain Water
/*
 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.
 
 For example,
 Given [0,1,0,2,1,0,1,3,2,1,2,1], return 6.
 
 
 The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped. Thanks Marcos for contributing this image!
 */
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
