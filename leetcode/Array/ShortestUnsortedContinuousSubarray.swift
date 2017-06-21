//
//  ShortestUnsortedContinuousSubarray.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        var min = nums.first ?? 0
        var max = nums.last ?? 0
        var start = 0
        var end = 0
        for i in 0..<nums.count {
            if nums[i] >= min {
                min = nums[i]
            }else{
                start = i
            }
            
            if nums[nums.count - i - 1] <= max {
                max = nums[nums.count - i - 1]
            }else{
                end = nums.count - i - 1
            }
        }
        return start != end ? start - end + 1 : 0
    }
}
