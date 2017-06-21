//
//  IntegerBreak.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func integerBreak(_ n: Int) -> Int {
        if n == 2 {
            return 1
        }
        if n == 3{
            return 2
        }
        var num = n
        var res = 1
        while num > 4 {
            res *= 3
            num -= 3
        }
        return num > 0 ? res * num : res
    }
}
