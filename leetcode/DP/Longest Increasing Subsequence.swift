//
//  Longest Increasing Subsequence.swift
//  leetcode
//
//  Created by FFIB on 2017/11/7.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var sortNums = [Int]()
        for num in nums {
            if sortNums.isEmpty || num > sortNums.last! {
                sortNums.append(num)
            }else {
                var l = 0, r = sortNums.count - 1
                while l < r {
                    let mid = (l + r) / 2
                    if sortNums[mid] < num {
                        l = mid + 1
                    }else {
                        r = mid
                    }
                }
                sortNums[l] = num
            }
        }
        return sortNums.count
    }
}
