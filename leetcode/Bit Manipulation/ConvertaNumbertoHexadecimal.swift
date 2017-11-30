//
//  ConvertaNumbertoHexadecimal.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//405. Convert a Number to Hexadecimal
/*
 Given an integer, write an algorithm to convert it to hexadecimal. For negative integer, two’s complement method is used.
 
 Note:
 
 All letters in hexadecimal (a-f) must be in lowercase.
 The hexadecimal string must not contain extra leading 0s. If the number is zero, it is represented by a single zero character '0'; otherwise, the first character in the hexadecimal string will not be the zero character.
 The given number is guaranteed to fit within the range of a 32-bit signed integer.
 You must not use any method provided by the library which converts/formats the number to hex directly.
 Example 1:
 
 Input:
 26
 
 Output:
 "1a"
 Example 2:
 
 Input:
 -1
 
 Output:
 "ffffffff"
 */
extension Solution {
    func toHex(_ num: Int) -> String {
        if case 0..<10 = num{
            return "\(num)"
        }
        var n = num
        if num < 0 {
            n += 4294967296
        }
        var res = ""
        while n > 0 {
            let digit = n % 16
            if digit >= 10 {
                res = String(Character(UnicodeScalar(digit + 87)!)) + res
            }else {
                res = "\(digit)" + res
            }
            n /= 16
        }
        return res
    }
}
