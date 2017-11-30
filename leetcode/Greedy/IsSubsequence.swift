//
//  IsSubsequence.swift
//  leetcode
//
//  Created by FFIB on 2017/11/8.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//392. Is Subsequence
/*
 Given a string s and a string t, check if s is subsequence of t.
 
 You may assume that there is only lower case English letters in both s and t. t is potentially a very long (length ~= 500,000) string, and s is a short string (<=100).
 
 A subsequence of a string is a new string which is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (ie, "ace" is a subsequence of "abcde" while "aec" is not).
 
 Example 1:
 s = "abc", t = "ahbgdc"
 
 Return true.
 
 Example 2:
 s = "axc", t = "ahbgdc"
 
 Return false.
 
 Follow up:
 If there are lots of incoming S, say S1, S2, ... , Sk where k >= 1B, and you want to check one by one to see if T has its subsequence. In this scenario, how would you change your code?
 
 Credits:
 Special thanks to @pbrother for adding this problem and creating all test cases. 
 */
extension Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count <= t.count else {
            return false
        }
        var sArr = Array(s)
        let tArr = Array(t)
        for char in tArr {
            if sArr.isEmpty {
                return true
            }
            if sArr[0] == char {
                sArr.removeFirst()
            }
        }
        return sArr.count == 0
    }
}
