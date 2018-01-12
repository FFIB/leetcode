//
//  MaximumLengthofRepeatedSubarray.swift
//  leetcode
//
//  Created by FFIB on 2018/1/10.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//718. Maximum Length of Repeated Subarray
/*
 Given two integer arrays A and B, return the maximum length of an subarray that appears in both arrays.
 
 Example 1:
 Input:
 A: [1,2,3,2,1]
 B: [3,2,1,4,7]
 Output: 3
 Explanation:
 The repeated subarray with maximum length is [3, 2, 1].
 Note:
 1 <= len(A), len(B) <= 1000
 2 0 <= A[i], B[i] < 100
 */
extension Solution {
    func findLength(_ A: [Int], _ B: [Int]) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: B.count + 1), count: A.count + 1)
        var ans = 0
        for i in 0...A.count {
            for j in 0...B.count {
                guard i > 0 && j > 0 else { continue }
                if A[i - 1] == B[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1] + 1
                    ans = max(ans, dp[i][j])
                }
            }
        }
        return ans
    }
}
