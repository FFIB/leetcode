//
//  MaximumLengthofPairChain.swift
//  leetcode
//
//  Created by FFIB on 2017/10/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//646. Maximum Length of Pair Chain
/*
 You are given n pairs of numbers. In every pair, the first number is always smaller than the second number.
 
 Now, we define a pair (c, d) can follow another pair (a, b) if and only if b < c. Chain of pairs can be formed in this fashion.
 
 Given a set of pairs, find the length longest chain which can be formed. You needn't use up all the given pairs. You can select pairs in any order.
 
 Example 1:
 Input: [[1,2], [2,3], [3,4]]
 Output: 2
 Explanation: The longest chain is [1,2] -> [3,4]
 Note:
 The number of given pairs will be in the range [1, 1000].
 */
extension Solution {
    func findLongestChain(_ pairs: [[Int]]) -> Int {
        let chains = pairs.sorted{$0[1] > $1[1]}
        var last = [Int.min, Int.min]
        var ans = 0
        for chain in chains {
            if chain[0] > last[1] {
                ans += 1
                last = chain
            }
        }
        return ans
    }
}
