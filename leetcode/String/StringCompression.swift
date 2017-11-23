//
//  StringCompression.swift
//  leetcode
//
//  Created by FFIB on 2017/11/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func compress(_ chars: inout [Character]) -> Int {
        guard chars.count > 1 else {
            return chars.count
        }
        var i = 1
        var isInsert = false
        while i < chars.count {
            var count = 1
            while !isInsert && i < chars.count && chars[i] == chars[i - 1] {
                count += 1
                chars.remove(at: i)
            }
            if count > 1 {
                let index = i
                isInsert = true
                let char = Array("\(count)")
                for j in (0..<char.count).reversed() {
                    chars.insert(char[j], at: index)
                    i += 1
                }
            }else {
                isInsert = false
                i += 1
            }
        }
        return chars.count
    }
}
