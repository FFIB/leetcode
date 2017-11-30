//
//  FindAllAnaframsInString.swift
//  leetcode
//
//  Created by FFIB on 2017/7/19.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//438. Find All Anagrams in a String
/*
 Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.
 
 Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.
 
 The order of output does not matter.
 
 Example 1:
 
 Input:
 s: "cbaebabacd" p: "abc"
 
 Output:
 [0, 6]
 
 Explanation:
 The substring with start index = 0 is "cba", which is an anagram of "abc".
 The substring with start index = 6 is "bac", which is an anagram of "abc".
 Example 2:
 
 Input:
 s: "abab" p: "ab"
 
 Output:
 [0, 1, 2]
 
 Explanation:
 The substring with start index = 0 is "ab", which is an anagram of "ab".
 The substring with start index = 1 is "ba", which is an anagram of "ab".
 The substring with start index = 2 is "ab", which is an anagram of "ab".
 */
extension Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let windowSize = p.count
        guard windowSize > 0 else {
            return [Int]()
        }
        
        var asciis = Array(repeating: 0, count: 26)
        
        for str in p.unicodeScalars {
            asciis[Int(str.value) - 97] += 1
        }
        
        var res = [Int]()
        let chars = Array(s.unicodeScalars)
        for (index, char) in chars.enumerated() {
            asciis[Int(char.value) - 97] -= 1
            let start = index - windowSize + 1
            guard start >= 0 else {
                continue
            }
            
            if asciis.filter({ $0 > 0 }).isEmpty {
                res.append(start)
            }
            asciis[Int(chars[start].value) - 97] += 1
        }
        
        return res
    }
}
