//
//  ZigZagConversion.swift
//  leetcode
//
//  Created by LISA on 2017/7/13.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var chars = Array(s.characters)
        var res = ""
        for i in 0..<numRows {
            var index = i
            while index < chars.count {
                res.append(chars[index])
                index += (numRows - 1) * 2
                let j = index - i * 2
                if i != 0 && i != numRows - 1 && index < chars.count {
                    res.append(chars[j])
                }
            }
        }
        return res
    }
}
