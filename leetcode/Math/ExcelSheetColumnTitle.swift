//
//  ExcelSheetColumnTitle.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//168. Excel Sheet Column Title
/*
 Given a positive integer, return its corresponding column title as appear in an Excel sheet.
 
 For example:
 
 1 -> A
 2 -> B
 3 -> C
 ...
 26 -> Z
 27 -> AA
 28 -> AB
 Credits:
 Special thanks to @ifanchu for adding this problem and creating all test cases.
 */
extension Solution {
    func convertToTitle(_ n: Int) -> String {
        var num = n
        var result = ""
        while num > 0 {
            num -= 1
            result.insert(Character(UnicodeScalar(num % 26 + 65)!), at: result.startIndex)
            num /= 26
        }
        return result
    }
}
