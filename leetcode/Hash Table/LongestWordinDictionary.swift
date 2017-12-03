//
//  LongestWordinDictionary.swift
//  leetcode
//
//  Created by FFIB on 2017/12/2.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func longestWord(_ words: [String]) -> String {
        var ans = ""
        var dict = ["": 0]
        for word in words.sorted(by: {$0.count < $1.count}) {
            let s = String(word[word.startIndex..<word.index(before: word.endIndex)])
            if dict[s] != nil {
                dict[word] = 0
                if ans.count == word.count {
                    ans = ans < word ? ans : word
                }else if ans.count < word.count {
                    ans = word
                }
            }
        }
        return ans
    }
}
