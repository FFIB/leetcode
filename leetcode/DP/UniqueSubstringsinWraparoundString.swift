//
//  UniqueSubstringsinWraparoundString.swift
//  leetcode
//
//  Created by FFIB on 2017/11/9.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//467. Unique Substrings in Wraparound String
/*
 Consider the string s to be the infinite wraparound string of "abcdefghijklmnopqrstuvwxyz", so s will look like this: "...zabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd....".
 
 Now we have another string p. Your job is to find out how many unique non-empty substrings of p are present in s. In particular, your input is the string p and you need to output the number of different non-empty substrings of p in the string s.
 
 Note: p consists of only lowercase English letters and the size of p might be over 10000.
 
 Example 1:
 Input: "a"
 Output: 1
 
 Explanation: Only the substring "a" of string "a" is in the string s.
 Example 2:
 Input: "cac"
 Output: 2
 Explanation: There are two substrings "a", "c" of string "cac" in the string s.
 Example 3:
 Input: "zab"
 Output: 6
 Explanation: There are six substrings "z", "a", "b", "za", "ab", "zab" of string "zab" in the string s.
 */
extension Solution {
    func findSubstringInWraproundString(_ p: String) -> Int {
        var len = 0
        var alphabet = Array(repeating: 0, count: 26)
        let chars = Array(p)
        var dp = [Int]()
        for (i, char) in chars.enumerated() {
            guard let ascii = UnicodeScalar(String(char))?.value else{
                continue
            }
            let value = Int(ascii) - 97
            if i > 0 && (value - dp.last! == 1 || dp.last! - value == 25) {
               len += 1
            }else {
                len = 1
            }
            alphabet[value] = max(len, alphabet[value])
            dp.append(value)
        }
        return alphabet.reduce(0, +)
    }
}
