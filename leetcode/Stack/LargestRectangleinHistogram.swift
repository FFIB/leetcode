//
//  LargestRectangleinHistogram.swift
//  leetcode
//
//  Created by FFIB on 2017/12/6.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
