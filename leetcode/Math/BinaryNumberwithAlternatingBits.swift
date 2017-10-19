//
//  BinaryNumberwithAlternatingBits.swift
//  leetcode
//
//  Created by FFIB on 2017/10/19.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {
        var num = n
        var bit = num % 2
        while num > 2 {
            num /= 2
            let b = num % 2
            if b == bit {
                return false
            }
            bit = b
        }
        return true
    }
}
