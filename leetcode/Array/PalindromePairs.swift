//
//  PalindromePairs.swift
//  leetcode
//
//  Created by FFIB on 2017/9/13.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//MARK: TLE
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
            palin = findPalinMatch(word: String(word.reversed()))
            for str in palin {
                let rstr = String(str.reversed())
                if let d = dict[rstr], !states[i][d] {
                    ans.append([i, d])
                    states[i][d] = true
                }
            }
        }
        return ans
    }
    fileprivate func findPalinMatch(word: String) -> [String]{
        let chars = Array((word + "#" + String(word.reversed())))
        var p = Array(repeating: 0, count: chars.count)
        for i in 1..<chars.count{
            var j = p[i - 1]
            while j > 0 && chars[i] != chars[j] { j = p[j - 1] }
            p[i] = chars[i] != chars[j] ? 0 : j + 1
        }
        var res = [String]()
        var i = p.last!
        while i > 0 {
            res.append(String(chars[chars.count - word.count..<chars.count - i]))
            i = p[i - 1]
        }
        res.append(String(chars[chars.count - word.count..<chars.count]))
        return res
    }
}

