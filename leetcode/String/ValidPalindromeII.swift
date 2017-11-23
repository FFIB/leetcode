//
//  ValidPalindromeII.swift
//  leetcode
//
//  Created by FFIB on 2017/9/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
