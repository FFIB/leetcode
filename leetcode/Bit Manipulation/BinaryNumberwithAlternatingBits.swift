//
//  BinaryNumberwithAlternatingBits.swift
//  leetcode
//
//  Created by FFIB on 2017/10/19.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//693. Binary Number with Alternating Bits
/*
 Given a positive integer, check whether it has alternating bits: namely, if two adjacent bits will always have different values.
 
 Example 1:
 Input: 5
 Output: True
 Explanation:
 The binary representation of 5 is: 101
 Example 2:
 Input: 7
 Output: False
 Explanation:
 The binary representation of 7 is: 111.
 Example 3:
 Input: 11
 Output: False
 Explanation:
 The binary representation of 11 is: 1011.
 Example 4:
 Input: 10
 Output: True
 Explanation:
 The binary representation of 10 is: 1010.
 */
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
