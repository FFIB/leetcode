//
//  BinaryTreesWithFactors.swift
//  leetcode
//
//  Created by FFIB on 2018/5/14.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//823. Binary Trees With Factors
/*
 Given an array of unique integers, each integer is strictly greater than 1.

 We make a binary tree using these integers and each number may be used for any number of times.

 Each non-leaf node's value should be equal to the product of the values of it's children.

 How many binary trees can we make?  Return the answer modulo 10 ** 9 + 7.

 Example 1:

 Input: A = [2, 4]
 Output: 3
 Explanation: We can make these trees: [2], [4], [4, 2, 2]
 Example 2:

 Input: A = [2, 4, 5, 10]
 Output: 7
 Explanation: We can make these trees: [2], [4], [5], [10], [4, 2, 2], [10, 2, 5], [10, 5, 2].


 Note:

 1 <= A.length <= 1000.
 2 <= A[i] <= 10 ^ 9.
 */
extension Solution {
    func numFactoredBinaryTrees(_ A: [Int]) -> Int {
        var dp = [Int: Int]()
        let mod = Int(pow(10.0, 9.0)) + 7
        let sortedA = A.sorted()
        for (i, a) in sortedA.enumerated() {
            var num = 0
            for m in sortedA[0..<i] {
                if m * m > a { break }
                if a % m > 0 { continue }
                let n = a / m
                num = num + dp[m]! * (dp[n] ?? 0) * (m != n ? 2 : 1) % mod
            }
            dp[a] = num + 1
        }
        return dp.reduce(0, { (res, arg1) -> Int in
            let (_, v) = arg1
            return v + res
        }) % mod
    }
}
