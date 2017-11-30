//
//  AddStrings.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//415. Add Strings
/*
 Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.
 
 Note:
 
 The length of both num1 and num2 is < 5100.
 Both num1 and num2 contains only digits 0-9.
 Both num1 and num2 does not contain any leading zero.
 You must not use any built-in BigInteger library or convert the inputs to integer directly.
 */
extension Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var index1 = num1.index(before: num1.endIndex)
        var index2 = num2.index(before: num2.endIndex)
        var result = ""
        var digit = 0
        while index1 != num1.endIndex || index2 != num2.endIndex{
            var temp = 0
            if index1 != num1.endIndex {
                temp += Int(String(num1[index1]))!
                index1 = index1 == num1.startIndex ? num1.endIndex : num1.index(before: index1)
            }
            if index2 != num2.endIndex {
                temp += Int(String(num2[index2]))!
                index2 = index2 == num2.startIndex ? num2.endIndex : num2.index(before: index2)
            }
            temp += digit
            if temp >= 10 {
                temp -= 10
                digit = 1
            }else {
                digit = 0
            }
            result = "\(temp)" + result
        }
        result = digit == 1 ? "1" + result : result
        return result
    }
}
