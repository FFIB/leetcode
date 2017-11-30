//
//  ValidTriangleNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//611. Valid Triangle Number
/*
 Given an array consists of non-negative integers, your task is to count the number of triplets chosen from the array that can make triangles if we take them as side lengths of a triangle.
 
 Example 1:
 Input: [2,2,3,4]
 Output: 3
 Explanation:
 Valid combinations are:
 2,3,4 (using the first 2)
 2,3,4 (using the second 2)
 2,2,3
 Note:
 The length of the given array won't exceed 1000.
 The integers in the given array are in the range of [0, 1000].
*/

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
