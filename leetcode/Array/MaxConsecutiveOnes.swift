//
//  MaxConsecutiveOnes.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var consecutive = 0
        var maxConsecutive = 0
        for i in 0..<nums.count {
            consecutive = nums[i] == 0 ? 0 : consecutive + 1
            if maxConsecutive < consecutive {
                maxConsecutive = consecutive
            }
        }
        return maxConsecutive
    }
}
