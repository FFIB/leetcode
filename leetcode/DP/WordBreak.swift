//
//  WordBreak.swift
//  leetcode
//
//  Created by FFIB on 2017/11/2.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//139. Word Break
/*
 Given a non-empty string s and a dictionary wordDict containing a list of non-empty words, determine if s can be segmented into a space-separated sequence of one or more dictionary words. You may assume the dictionary does not contain duplicate words.
 
 For example, given
 s = "leetcode",
 dict = ["leet", "code"].
 
 Return true because "leetcode" can be segmented as "leet code".
 
 UPDATE (2017/1/4):
 The wordDict parameter had been changed to a list of strings (instead of a set of strings). Please reload the code definition to get the latest changes
 */
extension Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var dict = [String: Int]()
        var maxLength = 0
        for word in wordDict {
            dict[word] = (dict[word] ?? 0) + 1
            maxLength = max(word.count, maxLength)
        }
        var queues = [s]
        var set = Set<String>()
        
        set.insert(s)
        while !queues.isEmpty {
            let front = queues.removeFirst()
            if dict[front] != nil {
                return true
            }
            let chars = Array(front)
            var prefix = ""
            for i in 0..<min(chars.count, maxLength) {
                prefix.append(chars[i])
                let suffix = String(chars[i+1..<chars.count])
                if dict[prefix] != nil && !set.contains(suffix) {
                    set.insert(suffix)
                    queues.append(suffix)
                }
            }
        }
        return false
    }
}
