//
//  WordBreak.swift
//  leetcode
//
//  Created by FFIB on 2017/11/2.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var dict = [String: Int]()
        var maxLength = 0
        for word in wordDict {
            dict[word] = (dict[word] ?? 0) + 1
            maxLength = max(word.characters.count, maxLength)
        }
        var queues = [s]
        var set = Set<String>()
        
        set.insert(s)
        while !queues.isEmpty {
            let front = queues.removeFirst()
            if dict[front] != nil {
                return true
            }
            let chars = Array(front.characters)
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