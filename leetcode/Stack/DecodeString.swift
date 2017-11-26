//
//  DecodeString.swift
//  leetcode
//
//  Created by FFIB on 2017/11/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func decodeString(_ s: String) -> String {
        guard s.count > 1 else { return s }
        
        var digits = Array(repeating: 0, count: s.count)
        var strs = Array(repeating: "", count: s.count)
        
        var k = 1
        for char in s {
            if let num = Int(String(char)) {
                digits[k] = digits[k] * 10 + num
            }else if char == "[" {
                k += 1
            }else if char == "]" {
                for _ in 0..<digits[k - 1] {
                    strs[k - 1] += strs[k]
                }
                digits[k - 1] = 0
                strs[k] = ""
                k -= 1
            }else {
                strs[k] += String(char)
            }
        }
        return strs[1]
    }
}
