//
//  PalindromicSubstrings.swift
//  leetcode
//
//  Created by FFIB on 2017/8/9.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//647. Palindromic Substrings
/*
 Given a string, your task is to count how many palindromic substrings in this string.
 
 The substrings with different start indexes or end indexes are counted as different substrings even they consist of same characters.
 
 Example 1:
 Input: "abc"
 Output: 3
 Explanation: Three palindromic strings: "a", "b", "c".
 Example 2:
 Input: "aaa"
 Output: 6
 Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
 */
extension Solution {
    func countSubstrings(_ s: String) -> Int {
        let arr = Array(s)
        var res = 0
        func assist(i: Int, j: Int, count: inout Int) {
            var i = i
            var j = j
            while i >= 0 && j < arr.count {
                if arr[i] == arr[j] {
                    count += 1
                    i -= 1
                    j += 1
                }else {
                    break
                }
            }
        }
        
        for i in 0..<arr.count {
            assist(i: i, j: i, count: &res)
            assist(i: i, j: i + 1, count: &res)
        }
        return res
    }
}
