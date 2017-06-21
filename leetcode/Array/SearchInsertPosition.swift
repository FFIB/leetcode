//
//  SearchInsertPosition.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            }else if nums[mid] < target {
                left = mid + 1
            }else{
                right = mid - 1
            }
        }
        return left
    }
}
