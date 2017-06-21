//
//  ValidTriangleNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution  {
    func triangleNumber(_ nums: [Int]) -> Int {
        guard nums.count > 2 else {
            return 0
        }
        var res = 0
        let sortNums = nums.sorted()
        for i in (2..<nums.count).reversed() {
            var l = 0
            var r = i - 1
            while l < r {
                if sortNums[l] + sortNums[r] > sortNums[i] {
                    res += r - l
                    r -= 1
                }else {
                    l += 1
                }
            }
        }
        return res
    }
}
