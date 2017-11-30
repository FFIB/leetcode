//
//  FractiontoRecurringDecimal.swift
//  leetcode
//
//  Created by FFIB on 2017/9/8.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//166. Fraction to Recurring Decimal
/*
 Given two integers representing the numerator and denominator of a fraction, return the fraction in string format.
 
 If the fractional part is repeating, enclose the repeating part in parentheses.
 
 For example,
 
 Given numerator = 1, denominator = 2, return "0.5".
 Given numerator = 2, denominator = 1, return "2".
 Given numerator = 2, denominator = 3, return "0.(6)".
 Credits:
 Special thanks to @Shangrila for adding this problem and creating all test cases.
 */
extension Solution {
    func fractionToDecimal(_ numerator: Int, _ denominator: Int) -> String {
        let isNegative = (numerator > 0 && denominator < 0)
                         || (numerator < 0 && denominator > 0)
        
        var dividend = abs(numerator)
        let divisor = abs(denominator)
        var res = isNegative ? "-"  : ""
        res += String(dividend / divisor)
        dividend = 10 * (dividend % divisor)
        var loopDict = [Int: Int]()
        guard dividend != 0 else{
            return res
        }
        res.append(".")
        var count = res.count
        while dividend != 0 {
            loopDict[dividend] = count
            res.append(String(dividend / divisor))
            dividend = 10 * (dividend % divisor)
            count += 1
            if let index = loopDict[dividend] {
                res.insert("(", at: res.index(res.startIndex, offsetBy: index))
                res.append(")")
                break
            }
        }
        return res
    }
}
