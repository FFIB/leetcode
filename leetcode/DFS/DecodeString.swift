//
//  DecodeString.swift
//  leetcode
//
//  Created by FFIB on 2017/11/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//394. Decode String
/*
 Given an encoded string, return it's decoded string.
 
 The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is being repeated exactly k times. Note that k is guaranteed to be a positive integer.
 
 You may assume that the input string is always valid; No extra white spaces, square brackets are well-formed, etc.
 
 Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, k. For example, there won't be input like 3a or 2[4].
 
 Examples:
 
 s = "3[a]2[bc]", return "aaabcbc".
 s = "3[a2[c]]", return "accaccacc".
 s = "2[abc]3[cd]ef", return "abcabccdcdcdef".
 */
extension Solution {
    func decodeString(_ s: String) -> String {
        guard s.count > 1 else { return s }
        
        var digits = Array(repeating: 0, count: s.count)
        var strs = Array(repeating: "", count: s.count)
        
        var k = 1
        for char in s {
            if let num = Int(String(char)) {
                digits[k] = digits[k] * 10 + num
            }else if char == "[" {
                k += 1
            }else if char == "]" {
                for _ in 0..<digits[k - 1] {
                    strs[k - 1] += strs[k]
                }
                digits[k - 1] = 0
                strs[k] = ""
                k -= 1
            }else {
                strs[k] += String(char)
            }
        }
        return strs[1]
    }
}
