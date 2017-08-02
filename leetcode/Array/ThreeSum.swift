//
//  ThreeSum.swift
//  leetcode
//
//  Created by LISA on 2017/8/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        let sortNums = nums.sorted()
        for i in 0..<sortNums.count {
            let target = sortNums[i]
            if i > 0 && sortNums[i] == sortNums[i - 1] {
                continue
            }
            var left = i + 1
            var right = sortNums.count - 1
            while left < right {
                let current = sortNums[left] + sortNums[right]
                if 0 - target == current {
                    res.append([sortNums[left], sortNums[right], target])
                    left += 1
                    right -= 1
                    while left < right && sortNums[left] == sortNums[left-1] { left += 1 }
                    while left < right && sortNums[right] == sortNums[right+1] { right -= 1 }
                }else if 0 - target > current {
                    left += 1
                }else {
                    right -= 1
                }
            }
        }
        return res
    }
}
