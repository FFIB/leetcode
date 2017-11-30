//
//  RepeatedSubstringPattern.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//459. Repeated Substring Pattern
/*
 Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.
 
 Example 1:
 Input: "abab"
 
 Output: True
 
 Explanation: It's the substring "ab" twice.
 Example 2:
 Input: "aba"
 
 Output: False
 Example 3:
 Input: "abcabcabcabc"
 
 Output: True
 
 Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)
 */
extension Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        if s.count < 2{
            return false
        }
        let str = s[s.startIndex..<s.endIndex] + s[s.index(after: s.startIndex)..<s.index(before: s.endIndex)]
        return str.contains(s)
    }
}
