//
//  WordBreakII.swift
//  leetcode
//
//  Created by FFIB on 2017/11/2.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
