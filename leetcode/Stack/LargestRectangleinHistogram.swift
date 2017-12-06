//
//  LargestRectangleinHistogram.swift
//  leetcode
//
//  Created by FFIB on 2017/12/6.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//84. Largest Rectangle in Histogram
/*
 Given n non-negative integers representing the histogram's bar height where the width of each bar is 1, find the area of largest rectangle in the histogram.
 
 
 Above is a histogram where width of each bar is 1, given height = [2,1,5,6,2,3].
 
 
 The largest rectangle is shown in the shaded area, which has area = 10 unit.
 
 For example,
 Given heights = [2,1,5,6,2,3],
 return 10.
 */
extension Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack = [Int]()
        var ans = 0
        let heights = heights + [-1]
        for (i, h) in heights.enumerated() {
            while let last = stack.last, h <= heights[last] {
                stack.removeLast()
                let w = stack.isEmpty ? i : i - stack.last! - 1
                ans = max(ans, w * heights[last])
            }
            stack.append(i)
        }
        return ans
    }
}
