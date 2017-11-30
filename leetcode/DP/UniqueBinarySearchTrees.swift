//
//  UniqueBinarySearchTrees.swift
//  leetcode
//
//  Created by FFIB on 2017/11/6.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//96. Unique Binary Search Trees
/*
 Given n, how many structurally unique BST's (binary search trees) that store values 1...n?
 
 For example,
 Given n = 3, there are a total of 5 unique BST's.
 
 1         3     3      2      1
 \       /     /      / \      \
 3     2     1      1   3      2
 /     /       \                 \
 2     1         2                 3
 */
extension Solution {
    func numTrees(_ n: Int) -> Int {
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        for i in 1...n {
            for j in 0..<i {
                dp[i] += dp[j] * dp[i - 1 - j]
            }
        }
        return dp[n]
    }
}
