//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  leetcode
//
//  Created by FFIB on 2017/7/14.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//3. Longest Substring Without Repeating Characters
/*
 Given a string, find the length of the longest substring without repeating characters.
 
 Examples:
 
 Given "abcabcbb", the answer is "abc", which the length is 3.
 
 Given "bbbbb", the answer is "b", with the length of 1.
 
 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */
extension Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var res = 0
        var asciiArr = Array(repeating: -1, count: 255)
        let chars = Array(s.unicodeScalars)
        var start = -1
        var end = 0
        while end < chars.count {
            let ascii = Int(chars[end].value)
            if asciiArr[ascii] != -1 {
                res = max(res, end - start - 1)
                end = asciiArr[ascii]
                start = end
                asciiArr = Array(repeating: -1, count: 255)
            }else {
                asciiArr[ascii] = end
            }
            end += 1
        }
        return max(res, end - start - 1)
    }
}
