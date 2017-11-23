//
//  FractiontoRecurringDecimal.swift
//  leetcode
//
//  Created by FFIB on 2017/9/8.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
