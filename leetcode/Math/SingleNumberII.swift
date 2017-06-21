//
//  SingleNumberII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func singleNumberII(_ nums: [Int]) -> Int {
        var one = 0
        var two = 0
        var three = 0
        for num in nums {
            two |= (one & num)
            one ^= num
            three = ~(one & two)
            one &= three
            two &= three
        }
        return one
    }
}
