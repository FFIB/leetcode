//
//  ValidParenthesisString.swift
//  leetcode
//
//  Created by FFIB on 2017/9/22.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func checkValidString(_ s: String) -> Bool {
        var low = 0
        var high = 0
        for char in s.characters {
            if char == "(" {
                low += 1
                high += 1
            }else if char == ")" {
                if low > 0 {
                    low -= 1
                }
                high -= 1
            }else if char == "*" {
                if low > 0 {
                    low -= 1
                }
                high += 1
            }
        }
        return low == 0
    }
}
