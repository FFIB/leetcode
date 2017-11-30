//
//  ContainerWithMostWater.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//11. Container With Most Water
/*
 Given n non-negative integers a1, a2, ..., an, where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.
 
 Note: You may not slant the container and n is at least 2.
 */
extension Solution  {
    func maxArea(_ height: [Int]) -> Int {
        var res = 0
        var left = 0
        var right = height.count - 1
        while left < right {
            let minHeight = height[left] > height[right] ? height[right] : height[left]
            
            let area = (right - left) * minHeight
            res = res > area ? res : area
            if height[left + 1] > height[left] || height[left] < height[right]{
                left += 1
            }else {
                right -= 1
            }
            
        }
        return res
    }
}
