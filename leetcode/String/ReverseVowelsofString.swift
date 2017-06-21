//
//  ReverseVowelsofString.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func reverseVowels(_ s: String) -> String {
        guard !s.isEmpty else{
            return s
        }
        var str = s
        let vowels = ["a","e","i","o","u","A","E","I","O","U"]
        var end = str.index(before: s.endIndex)
        var start = str.startIndex
        var left = ""
        var right = ""
        while start < end {
            while start < end {
                if vowels.contains(String(str[start])) {
                    left = String(str[start])
                    break
                }
                start = str.index(after: start)
            }
            
            while start < end {
                if vowels.contains(String(str[end])) {
                    right = String(str[end])
                    break
                }
                end = str.index(before: end)
            }
            if start != end {
                str.replaceSubrange(start...start, with: right)
                str.replaceSubrange(end...end, with: left)
                start = str.index(after: start)
                end = str.index(before: end)
            }
        }
        return str
    }
}
