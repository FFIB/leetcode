//
//  NthDigit.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//400. Nth Digit
/*
 Find the nth digit of the infinite integer sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ...
 
 Note:
 n is positive and will fit within the range of a 32-bit signed integer (n < 231).
 
 Example 1:
 
 Input:
 3
 
 Output:
 3
 Example 2:
 
 Input:
 11
 
 Output:
 0
 
 Explanation:
 The 11th digit of the sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ... is a 0, which is part of the number 10.
 */
extension Solution {
    func findNthDigit(_ n: Int) -> Int {
        if n < 10 {
            return n
        }
        var i = 2
        var digit = 10
        var num = 9
        while n > num{
            num += 9 * digit * i
            if n < num {
                break
            }
            digit = digit * 10
            i += 1
        }
        num = n - num + 9 * digit * i
        let index = (num - 1) % i
        let res = "\(digit + (num - 1) / i)"
        return Int(String(res[res.index(res.startIndex, offsetBy: index)]))!
    }
}
