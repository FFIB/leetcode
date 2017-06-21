//
//  ReshapetheMatrix.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        if nums.isEmpty {
            return nums
        }
        guard nums[0].count * nums.count == r * c else{
            return nums
        }
        var res = [[Int]]()
        var index = 0
        let dimensionalArr = nums.reduce([], +)
        while index <= dimensionalArr.count - c {
            res.append([Int](dimensionalArr[index..<(index + c)]))
            index += c
        }
        return res
    }
}
