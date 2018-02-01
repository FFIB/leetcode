//
//  MultiplyStrings.swift
//  leetcode
//
//  Created by FFIB on 2018/2/1.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//43. Multiply Strings
/*
 Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2.

 Note:

 The length of both num1 and num2 is < 110.
 Both num1 and num2 contains only digits 0-9.
 Both num1 and num2 does not contain any leading zero.
 You must not use any built-in BigInteger library or convert the inputs to integer directly.
 */
extension Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        let s1 = Array(num1.unicodeScalars.reversed())
        let s2 = Array(num2.unicodeScalars.reversed())

        var pos = Array(repeating: 0, count: num1.count + num2.count)

        for (i, char1) in s1.enumerated() {
            for (j, char2) in s2.enumerated() {
                let mult = Int((char1.value - 48) * (char2.value - 48))
                let p1 = num1.count + num2.count - i - j - 2, p2 = num1.count + num2.count - i - j - 2 + 1
                let sum = mult  + pos[p2]

                pos[p1] += sum / 10
                pos[p2] = sum % 10
            }
        }

        var index = pos.count - 1
        for (i, num) in pos.enumerated() {
            if num != 0 {
                index = i
                break
            }
        }

        let ans = pos[index..<pos.count].reduce("", { (res, num) -> String in
                    return res + "\(num)"
                })
        return ans.count == 0 ? "0" : ans
    }
}
