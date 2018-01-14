//
//  DeleteOperationforTwoStrings.swift
//  leetcode
//
//  Created by FFIB on 2018/1/14.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//583. Delete Operation for Two Strings
/*
 Given two words word1 and word2, find the minimum number of steps required to make word1 and word2 the same, where in each step you can delete one character in either string.
 
 Example 1:
 Input: "sea", "eat"
 Output: 2
 Explanation: You need one step to make "sea" to "ea" and another step to make "eat" to "ea".
 Note:
 The length of given words won't exceed 500.
 Characters in given words can only be lower-case letters.
 */
extension Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        
        guard !word1.isEmpty && !word2.isEmpty else {
            return word1.isEmpty ? word2.count : word1.count
        }
        
        var dp = Array(repeating: Array(repeating: 0, count: word2.count + 1), count: word1.count + 1)
        
        let chars1 = Array(word1)
        let chars2 = Array(word2)
        let c1 = word1.count
        let c2 = word2.count
        
        for i in 0...c1 { dp[i][0] = i }
        for i in 0...c2 { dp[0][i] = i }
        
        
        for i in 1...c1 {
            for j in 1...c2 {
                if chars1[i - 1] == chars2[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1]
                }else {
                    dp[i][j] = min(dp[i - 1][j - 1] + 2, dp[i - 1][j] + 1, dp[i][j - 1] + 1)
                }
            }
        }
        return dp[c1][c2]
    }
}
