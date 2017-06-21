//
//  PlusOne.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits
        for i in (0..<nums.count).reversed() {
            if nums[i] < 9 {
                nums[i] = nums[i] + 1
                return nums
            }
            nums[i] = 0
        }
        return [1] + nums
    }
}
