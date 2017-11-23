//
//  RepeatedSubstringPattern.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        if s.count < 2{
            return false
        }
        let str = s[s.startIndex..<s.endIndex] + s[s.index(after: s.startIndex)..<s.index(before: s.endIndex)]
        return str.contains(s)
    }
}
