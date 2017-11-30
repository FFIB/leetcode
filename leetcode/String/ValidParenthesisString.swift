//
//  ValidParenthesisString.swift
//  leetcode
//
//  Created by FFIB on 2017/9/22.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//678. Valid Parenthesis String
/*
 Given a string containing only three types of characters: '(', ')' and '*', write a function to check whether this string is valid. We define the validity of a string by these rules:
 
 Any left parenthesis '(' must have a corresponding right parenthesis ')'.
 Any right parenthesis ')' must have a corresponding left parenthesis '('.
 Left parenthesis '(' must go before the corresponding right parenthesis ')'.
 '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string.
 An empty string is also valid.
 Example 1:
 Input: "()"
 Output: True
 Example 2:
 Input: "(*)"
 Output: True
 Example 3:
 Input: "(*))"
 Output: True
 Note:
 The string size will be in the range [1, 100].
 */
extension Solution {
    func checkValidString(_ s: String) -> Bool {
        var low = 0
        var high = 0
        for char in s {
            if char == "(" {
                low += 1
                high += 1
            }else if char == ")" {
                if low > 0 {
                    low -= 1
                }
                high -= 1
            }else if char == "*" {
                if low > 0 {
                    low -= 1
                }
                high += 1
            }
        }
        return low == 0
    }
}
