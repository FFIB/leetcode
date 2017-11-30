//
//  ExcelSheetColumnNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//171. Excel Sheet Column Number
/*
 Related to question Excel Sheet Column Title
 
 Given a column title as appear in an Excel sheet, return its corresponding column number.
 
 For example:
 
 A -> 1
 B -> 2
 C -> 3
 ...
 Z -> 26
 AA -> 27
 AB -> 28
 Credits:
 Special thanks to @ts for adding this problem and creating all test cases.
 */
extension Solution {
    func titleToNumber(_ s: String) -> Int {
        var result = 0
        for unicodeScalar in s.unicodeScalars {
            result = result * 26 + (Int(unicodeScalar.value) - 64)
        }
        return result
    }
}
