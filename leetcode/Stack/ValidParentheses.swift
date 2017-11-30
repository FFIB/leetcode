//
//  ValidParentheses.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//20. Valid Parentheses
/*
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
 */
extension Solution {
    func isValid(_ s: String) -> Bool {
        var arr = [Character]()
        let foreParentheses = "{[("
        let backParentheses = "}])"
        let dict = ["[": "]", "{": "}", "(": ")"] as [Character: Character]
        for i in s {
            if foreParentheses.contains(String(i)) {
                arr.append(i)
            }
            if backParentheses.contains(String(i)) {
                if arr.isEmpty || dict[arr.removeLast()] != i {
                    return false
                }
            }
        }
        return arr.isEmpty
    }
}
