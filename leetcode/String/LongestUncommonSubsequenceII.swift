//
//  LongestUncommonSubsequenceII.swift
//  leetcode
//
//  Created by FFIB on 2018/1/16.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//522. Longest Uncommon Subsequence II
/*
 Given a list of strings, you need to find the longest uncommon subsequence among them. The longest uncommon subsequence is defined as the longest subsequence of one of these strings and this subsequence should not be any subsequence of the other strings.
 
 A subsequence is a sequence that can be derived from one sequence by deleting some characters without changing the order of the remaining elements. Trivially, any string is a subsequence of itself and an empty string is a subsequence of any string.
 
 The input will be a list of strings, and the output needs to be the length of the longest uncommon subsequence. If the longest uncommon subsequence doesn't exist, return -1.
 
 Example 1:
 Input: "aba", "cdc", "eae"
 Output: 3
 Note:
 
 All the given strings' lengths will not exceed 10.
 The length of the given list will be in the range of [2, 50].
 */
extension Solution {
    func findLUSlength(_ strs: [String]) -> Int {
        
        func isSubstring(s: String, t: String) -> Bool {
            var arr1 = Array(s)
            var arr2 = Array(t)
            var index1 = 0
            var index2 = 0
            while index1 < arr1.count && index2 < arr2.count {
                if arr1[index1] == arr2[index2] {
                    index1 += 1
                }
                index2 += 1
            }
            return index1 == arr1.count
        }
        
        var dict = [String: Int]()
        for str in strs {
            dict[str] = (dict[str] ?? 0) + 1
        }
        
        let sortStrs = strs.sorted{ $0.count > $1.count }
        for (i, s) in sortStrs.enumerated() {
            guard dict[s] == 1 else { continue }
            var flag = true
            for j in 0..<i {
                if isSubstring(s: s, t: sortStrs[j]) {
                    flag = false
                    break
                }
            }
    
            if flag {
                return s.count
            }
        }
        return -1
    }
}
