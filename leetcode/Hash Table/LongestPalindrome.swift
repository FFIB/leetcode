//
//  LongestPalindrome.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//409. Longest Palindrome
/*
 Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.
 
 This is case sensitive, for example "Aa" is not considered a palindrome here.
 
 Note:
 Assume the length of given string will not exceed 1,010.
 
 Example:
 
 Input:
 "abccccdd"
 
 Output:
 7
 
 Explanation:
 One longest palindrome that can be built is "dccaccd", whose length is 7.
 */
extension Solution {
    func longestPalindrome(_ s: String) -> Int {
        var dict = [String: Int]()
        var result = 0
        for element in s {
            let str = String(element)
            if dict[str] != nil {
                result += 2
                dict.removeValue(forKey: str)
            }else {
                dict[str] = 1
            }
        }
        return dict.count > 0 ? result + 1 : result
        
    }
}
