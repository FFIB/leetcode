//
//  RemoveDuplicatesfromSortedArray.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        var i = 1
        var j = 1
        while j < nums.count {
            if nums[j] != nums[i - 1] {
                nums[i] = nums[j]
                i += 1
                j += 1
            }else {
                j += 1
            }
        }
        return i
    }
}
