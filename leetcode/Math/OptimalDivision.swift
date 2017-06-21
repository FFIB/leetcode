//
//  OptimalDivision.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func optimalDivision(_ nums: [Int]) -> String {
        guard let max = nums.first else {
            return ""
        }
        guard nums.count != 1 else {
            return "\(max)"
        }
        guard nums.count != 2 else {
            return "\(max)/\(String(describing: nums.last!))"
        }
        var res = "\(max)/("
        for i in 1..<nums.count {
            res += "\(nums[i])/"
        }
        res.remove(at: res.index(before: res.endIndex))
        return res + ")"
    }
}
