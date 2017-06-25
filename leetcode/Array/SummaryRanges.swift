//
//  SummaryRanges.swift
//  leetcode
//
//  Created by LISA on 2017/6/25.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var res = [String]()
        var first = "\(nums.first!)"
        for i in 0..<nums.count {
            if i != 0 && nums[i] == nums[i - 1] + 1{
                res[res.count - 1] = first + "->" + "\(nums[i])"
            }else {
                first = "\(nums[i])"
                res.append("\(nums[i])")
            }
        }
        return res
    }
}
