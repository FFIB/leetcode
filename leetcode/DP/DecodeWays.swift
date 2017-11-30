//
//  DecodeWays.swift
//  leetcode
//
//  Created by FFIB on 2017/10/27.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//91. Decode Ways
/*
 A message containing letters from A-Z is being encoded to numbers using the following mapping:
 
 'A' -> 1
 'B' -> 2
 ...
 'Z' -> 26
 Given an encoded message containing digits, determine the total number of ways to decode it.
 
 For example,
 Given encoded message "12", it could be decoded as "AB" (1 2) or "L" (12).
 
 The number of ways decoding "12" is 2.
 */
extension Solution {
    func numDecodings(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var chars = Array(s)
        var dp = Array(repeating: 0, count: chars.count + 1)
        dp[0] = 1
        for i in 1...chars.count {
            if i > 0 && chars[i - 1] != "0" {
                dp[i] += dp[i - 1]
            }
            
            if i > 1 && chars[i - 2] == "1" {
                dp[i] += dp[i - 2]
            }
            if i > 1 && chars[i - 2] == "2" && chars[i - 1] <= "6" && chars[i - 1] >= "0"{
                dp[i] += dp[i - 2]
            }
        }
        return dp[chars.count]
    }
}
