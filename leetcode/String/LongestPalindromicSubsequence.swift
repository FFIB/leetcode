//
//  LongestPalindromicSubsequence.swift
//  leetcode
//
//  Created by LISA on 2017/7/17.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func longestPalindromeSubseq(_ s: String) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: s.count), count: s.count)
        let arr = Array(s)
        return longestPalindromeSubseqHelper(arr, i: 0, j: arr.count - 1, dp: &dp)
    }
    func longestPalindromeSubseqHelper(_ s:[Character], i: Int, j: Int, dp: inout [[Int]]) -> Int {
        guard dp[i][j] == 0 else { return dp[i][j] }
        if i > j { return 0 }
        if i == j { return 1 }
        if s[i] == s[j] {
            dp[i][j] = longestPalindromeSubseqHelper(s, i: i + 1, j: j - 1, dp: &dp) + 2
        }else {
            dp[i][j] = max(longestPalindromeSubseqHelper(s, i: i + 1, j: j, dp: &dp), longestPalindromeSubseqHelper(s, i: i, j: j - 1, dp: &dp))
        }
        print(dp)
        return dp[i][j]
    }
}
