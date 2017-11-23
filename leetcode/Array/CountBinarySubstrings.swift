//
//  CountBinarySubstrings.swift
//  leetcode
//
//  Created by FFIB on 2017/10/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        let chars = Array(s)
        var count = [0, 0]
        var ans = 0
        var last = -1
        for char in chars {
            let c = Int(String(char))!
            if c != last { count[c] = 0 }
            count[c] += 1
            if count[c] <= count[1 - c] { ans += 1 }
            last = c
        }
        return ans
    }
}
