//
//  PalindromePairs.swift
//  leetcode
//
//  Created by FFIB on 2017/9/13.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//MARK: TLE
//336. Palindrome Pairs
/*
 Given a list of unique words, find all pairs of distinct indices (i, j) in the given list, so that the concatenation of the two words, i.e. words[i] + words[j] is a palindrome.
 
 Example 1:
 Given words = ["bat", "tab", "cat"]
 Return [[0, 1], [1, 0]]
 The palindromes are ["battab", "tabbat"]
 Example 2:
 Given words = ["abcd", "dcba", "lls", "s", "sssll"]
 Return [[0, 1], [1, 0], [3, 2], [2, 4]]
 The palindromes are ["dcbaabcd", "abcddcba", "slls", "llssssll"]
 Credits:
 Special thanks to @dietpepsi for adding this problem and creating all test cases.
 */
extension Solution {
    func palindromePairs(_ words: [String]) -> [[Int]] {
        var states = Array(repeating: Array(repeating: false, count: words.count), count: words.count)
        var dict = [String: Int]()
        var ans = [[Int]]()
        for (i, word) in words.enumerated() {
            dict[word] = i
            states[i][i] = true
        }
        
        for (i, word) in words.enumerated() {
            var palin = findPalinMatch(word: word)
            for str in palin {
                if let d = dict[str], !states[d][i] {
                    ans.append([d, i])
                    states[d][i] = true
                }
            }
            palin = findPalinMatch(word: String(word.characters.reversed()))
            for str in palin {
                let rstr = String(str.characters.reversed())
                if let d = dict[rstr], !states[i][d] {
                    ans.append([i, d])
                    states[i][d] = true
                }
            }
        }
        return ans
    }
    fileprivate func findPalinMatch(word: String) -> [String]{
        let chars = Array((word + "#" + String(word.characters.reversed())).characters)
        var p = Array(repeating: 0, count: chars.count)
        for i in 1..<chars.count{
            var j = p[i - 1]
            while j > 0 && chars[i] != chars[j] { j = p[j - 1] }
            p[i] = chars[i] != chars[j] ? 0 : j + 1
        }
        var res = [String]()
        var i = p.last!
        while i > 0 {
            res.append(String(chars[chars.count - word.characters.count..<chars.count - i]))
            i = p[i - 1]
        }
        res.append(String(chars[chars.count - word.characters.count..<chars.count]))
        return res
    }
}
