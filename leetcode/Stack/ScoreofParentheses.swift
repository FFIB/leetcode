//
//  ScoreofParentheses.swift
//  leetcode
//
//  Created by FFIB on 2018/7/27.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//856. Score of Parentheses
/*
 Given a balanced parentheses string S, compute the score of the string based on the following rule:

 () has score 1
 AB has score A + B, where A and B are balanced parentheses strings.
 (A) has score 2 * A, where A is a balanced parentheses string.


 Example 1:

 Input: "()"
 Output: 1
 Example 2:

 Input: "(())"
 Output: 2
 Example 3:

 Input: "()()"
 Output: 2
 Example 4:

 Input: "(()(()))"
 Output: 6


 Note:

 S is a balanced parentheses string, containing only ( and ).
 2 <= S.length <= 50
 */
extension Solution {
    func scoreOfParentheses(_ S: String) -> Int {
        var stack = [Character]()
        var ans = 0
        var depth = 0.0
        var last = Character(")")
        for char in S {
            if char == "(" {
                stack.append(char)
                depth += 1
            } else {
                stack.removeLast()
                if last == "(" {
                    ans += Int(pow(2.0, depth - 1))
                }
                depth -= 1
            }
            last = char
        }
        return ans
    }
}
