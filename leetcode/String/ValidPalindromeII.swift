//
//  ValidPalindromeII.swift
//  leetcode
//
//  Created by FFIB on 2017/9/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//680. Valid Palindrome II
/*
 Given a non-empty string s, you may delete at most one character. Judge whether you can make it a palindrome.
 
 Example 1:
 Input: "aba"
 Output: True
 Example 2:
 Input: "abca"
 Output: True
 Explanation: You could delete the character 'c'.
 Note:
 The string will only contain lowercase characters a-z. The maximum length of the string is 50000.
 */
extension Solution {
    func validPalindrome(_ s: String) -> Bool {
        func isPalindrome(chars: ArraySlice<UInt32>) -> Bool {
            var left = chars.startIndex
            var right = chars.endIndex - 1
            while left < right {
                if chars[left] != chars[right] {
                    return false
                }
                left += 1
                right -= 1
            }
            return true
        }
        var chars = Array(s.unicodeScalars.map{$0.value})
        var left = 0
        var right = s.count - 1
        while left < right {
            if chars[left] != chars[right] {
                return isPalindrome(chars: chars[left+1...right]) || isPalindrome(chars: chars[left...right - 1])
            }
            left += 1
            right -= 1
        }
        return true
    }
}
