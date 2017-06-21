//
//  SingleNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for i in 0..<nums.count {
            result ^= nums[i]
        }
        return result
    }
}
