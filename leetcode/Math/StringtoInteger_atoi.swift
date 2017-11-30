//
//  StringtoInteger_atoi.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//8. String to Integer (atoi)
/*
 Implement atoi to convert a string to an integer.
 
 Hint: Carefully consider all possible input cases. If you want a challenge, please do not see below and ask yourself what are the possible input cases.
 
 Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). You are responsible to gather all the input requirements up front.
 
 Update (2015-02-10):
 The signature of the C++ function had been updated. If you still see your function signature accepts a const char * argument, please click the reload button  to reset your code definition.
 */
extension Solution {
    func myAtoi(_ str: String) -> Int {
        if str.isEmpty {
            return 0
        }
        var index = 0
        for s in str {
            if s != " " {
                break
            }
            index += 1
        }
        var vaild = str[str.index(str.startIndex, offsetBy: index)..<str.endIndex].components(separatedBy: ["a", "s", "d", "f", "g", "h", "j", "k", "l", "q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "z", "x", "c", "v", "b", "n", "m", " "]).first ?? "0"
        vaild = vaild.count > 15 ? String(vaild[str.index(str.startIndex, offsetBy: 15)]) : vaild
        let res = Int(vaild) ?? 0
        if res > 0 {
            return res > 2147483647 ? 2147483647 : res
        }
        return res < -2147483648 ? -2147483648 : res
    }
}
