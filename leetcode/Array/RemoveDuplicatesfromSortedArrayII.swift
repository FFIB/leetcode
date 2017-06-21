//
//  RemoveDuplicatesfromSortedArrayII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func removeDuplicatesII(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return nums.count
        }
        var element = 0
        var count = 0
        var index = 0
        for num in nums {
            if element == num {
                count += 1
            }else{
                element = num
                count = 1
            }
            if count > 2 {
                nums.remove(at: index)
                index -= 1
            }
            index += 1
        }
        return nums.count
    }
}
