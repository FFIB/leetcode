//
//  BasicCalculatorII.swift
//  leetcode
//
//  Created by FFIB on 2018/2/5.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//227. Basic Calculator II
/*
 Implement a basic calculator to evaluate a simple expression string.

 The expression string contains only non-negative integers, +, -, *, / operators and empty spaces . The integer division should truncate toward zero.

 You may assume that the given expression is always valid.

 Some examples:
 "3+2*2" = 7
 " 3/2 " = 1
 " 3+5 / 2 " = 5
 Note: Do not use the eval built-in library function.
 */
extension Solution {
    func calculateII(_ s: String) -> Int {
        var num = 0
        var plus = true
        var mult = true
        var pre = 1
        var sum = 0
        let count = s.count
        for (i, char) in s.utf8.enumerated() {
            let ascii = Int(char) - 48
            let isDigit = ascii >= 0 && ascii <= 9
            if isDigit {
                num = num * 10 + ascii
            }
            if (char != 32 && !isDigit) || i == count - 1 {
                if mult {
                    pre *= num
                }else {
                    pre /= num
                }
                num = 0
                if char == 42 || char == 47 {
                    mult = char == 42
                }else {
                    if plus {
                        sum += pre
                    } else {
                        sum -= pre
                    }
                    pre = 1
                    mult = true
                    plus = char == 43
                }
            }
        }
        return sum
    }
}
