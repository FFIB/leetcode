//
//  LongestPalindromicSubstring.swift
//  leetcode
//
//  Created by FFIB on 2017/12/15.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func longestPalindrome1(_ s: String) -> String {
        let count = s.count
        guard count > 1 else {
            return s
        }
        var range = (start: Int, end: Int)(0, 0)
        var chars = Array(s)
        var i = 0
        repeat {
            var l = i - 1
            var r = i + 1
            while chars[i] == chars[r] {
                r += 1
                if r >= chars.count { break }
            }
            if l >= 0 && r < chars.count {
                while chars[l] == chars[r] {
                    l -= 1
                    r += 1
                    if l < 0 || r >= chars.count { break }
                    
                }
            }
            i += 1
            if range.end - range.start < r - 1 - (l + 1) {
                range = (l + 1, r - 1)
            }
        }while i < count - 1 && (count - 1 - i) * 2 > range.end + 1 - range.start
        
        return String(chars[range.start...range.end])
    }
}
