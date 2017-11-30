//
//  3SumClosest .swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//16. 3Sum Closest
/*
 Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target. Return the sum of the three integers. You may assume that each input would have exactly one solution.
 
 For example, given array S = {-1 2 1 -4}, and target = 1.
 
 The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
 */
extension Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let sortNums = nums.sorted()
        var min = sortNums[0] + sortNums[1] + sortNums[2]
        for i in 0..<sortNums.count - 2 {
            var left = i + 1
            var right = sortNums.count - 1
            while left < right {
                let sum = sortNums[i] + sortNums[left] + sortNums[right]
                if sum == target {
                    return target
                }else if sum > target {
                    right -= 1
                }else {
                    left += 1
                }
                if abs(min - target) > abs(sum - target){
                    min = sum
                }
            }
        }
        return min
    }
}
