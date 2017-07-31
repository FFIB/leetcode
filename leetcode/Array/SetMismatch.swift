//
//  SetMismatch.swift
//  leetcode
//
//  Created by LISA on 2017/7/31.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            }else {
                return [num, (1 + nums.count) * nums.count / 2 - nums.reduce(0, +) + num]
                
            }
        }
        return [0, 1]
    }
}
