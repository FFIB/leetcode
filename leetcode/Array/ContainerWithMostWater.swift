//
//  ContainerWithMostWater.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
