//
//  WordBreakII.swift
//  leetcode
//
//  Created by FFIB on 2017/11/2.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//140. Word Break II
/*
 Given a non-empty string s and a dictionary wordDict containing a list of non-empty words, add spaces in s to construct a sentence where each word is a valid dictionary word. You may assume the dictionary does not contain duplicate words.
 
 Return all such possible sentences.
 
 For example, given
 s = "catsanddog",
 dict = ["cat", "cats", "and", "sand", "dog"].
 
 A solution is ["cats and dog", "cat sand dog"].
 
 UPDATE (2017/1/4):
 The wordDict parameter had been changed to a list of strings (instead of a set of strings). Please reload the code definition to get the latest changes.
 */
extension Solution {
    func wordBreakII(_ s: String, _ wordDict: [String]) -> [String] {
        var dict = [String: Int]()
        var maxLength = 0
        for word in wordDict {
            dict[word] = (dict[word] ?? 0) + 1
            maxLength = max(maxLength, word.count)
        }
        
        var tokenDict = [String: [String]]()
        func dfs(string: String) -> [String] {
            var ans = [String]()
            if dict[string] != nil { ans.append(string) }
            let chars = Array(string)
            for i in 0..<min(chars.count, maxLength) {
                let prefix = String(chars.prefix(i + 1))
                let suffix = String(chars.suffix(chars.count - i - 1))
                guard dict[prefix] != nil else{
                    continue
                }
                var res = [String]()
                if let token = tokenDict[suffix] {
                    res = token
                }else {
                    res = dfs(string: suffix)
                }
                for word in res {
                    ans.append(prefix + " " + word)
                }
                tokenDict[string] = ans
            }
            return ans
        }
        return dfs(string: s)
    }
}
