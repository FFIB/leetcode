//
//  ExcelSheetColumnNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func titleToNumber(_ s: String) -> Int {
        var result = 0
        for unicodeScalar in s.unicodeScalars {
            result = result * 26 + (Int(unicodeScalar.value) - 64)
        }
        return result
    }
}
