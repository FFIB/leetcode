//
//  Non-decreasingArray.swift
//  leetcode
//
//  Created by FFIB on 2017/9/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        guard nums.count > 2 else { return true }
        var isChanced = false
        var prev = nums.first!
        for i in 1 ..< nums.count {
            if prev > nums[i] {
                if isChanced {
                    return false
                }
                if i+1 == nums.count {
                    return true
                }
                
                isChanced = true
                
                if (i-2 < 0 || nums[i-2] <= nums[i]) {
                    prev = nums[i]
                } else if prev > nums[i+1]  {
                    return false
                }
            } else {
                prev = nums[i]
            }
        }
        return true
    }
}
