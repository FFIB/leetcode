//
//  StringtoInteger_atoi.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
