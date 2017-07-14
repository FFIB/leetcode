//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  leetcode
//
//  Created by LISA on 2017/7/14.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var res = 0
        var asciiArr = Array(repeating: -1, count: 255)
        let chars = Array(s.unicodeScalars)
        var start = -1
        var end = 0
        while end < chars.count {
            let ascii = Int(chars[end].value)
            if asciiArr[ascii] != -1 {
                res = max(res, end - start - 1)
                end = asciiArr[ascii]
                start = end
                asciiArr = Array(repeating: -1, count: 255)
            }else {
                asciiArr[ascii] = end
            }
            end += 1
        }
        return max(res, end - start - 1)
    }
}
