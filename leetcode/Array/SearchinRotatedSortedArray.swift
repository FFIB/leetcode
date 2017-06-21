//
//  SearchinRotatedSortedArray.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count - 1
        while start <= end {
            let mid = (start + end) / 2
            if nums[mid] == target {
                return mid
            }else if nums[start] <= nums[mid] {
                if target < nums[mid] && target >= nums[start] {
                    end = mid - 1
                }else {
                    start = mid + 1
                }
            }else{
                if target > nums[mid] && target <= nums[end] {
                    start = mid + 1
                }else {
                    end = mid - 1
                }
            }
        }
        return -1
    }
}
