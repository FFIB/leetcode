//
//  IntegertoRoman.swift
//  leetcode
//
//  Created by LISA on 2017/7/8.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func intToRoman(_ num: Int) -> String {
        var symbol = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        var values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        var n = num
        var res = ""
        var i = 0
        while n != 0 {
            while values[i] <= n {
                n = n - values[i]
                res.append(symbol[i])
            }
            i += 1
        }
        return res
    }
}
