//
//  IntegertoRoman.swift
//  leetcode
//
//  Created by FFIB on 2017/7/8.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//12. Integer to Roman
/*
 Given an integer, convert it to a roman numeral.
 
 Input is guaranteed to be within the range from 1 to 3999.
 */
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

