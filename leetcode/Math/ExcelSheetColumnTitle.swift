//
//  ExcelSheetColumnTitle.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
