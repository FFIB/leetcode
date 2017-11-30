//
//  ZigZagConversion.swift
//  leetcode
//
//  Created by FFIB on 2017/7/13.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//6. ZigZag Conversion
/*
 
 The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)
 
 P   A   H   N
 A P L S I I G
 Y   I   R
 And then read line by line: "PAHNAPLSIIGYIR"
 Write the code that will take a string and make this conversion given a number of rows:
 
 string convert(string text, int nRows);
 convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".
 */
extension Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var chars = Array(s)
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
