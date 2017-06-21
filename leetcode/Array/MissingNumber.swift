//
//  MissingNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum = 0
        for i in nums {
            sum += i
        }
        return (nums.count * (nums.count + 1)) / 2 - sum
    }
    
}
