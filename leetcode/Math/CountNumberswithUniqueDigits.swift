//
//  CountNumberswithUniqueDigits.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func countNumbersWithUniqueDigits(_ n: Int) -> Int {
        var result = 0
        if n == 1 {
            return 10
        }else if n == 0 {
            return 1
        }
        for i in 2...n {
            var temp = 1
            for j in 2...i {
                temp *= 9 - j + 2
            }
            result += temp * 9
        }
        return result + 10
    }
}
