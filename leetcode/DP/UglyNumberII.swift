//
//  UglyNumberII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//264. Ugly Number II
/*
 Write a program to find the n-th ugly number.
 
 Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 1, 2, 3, 4, 5, 6, 8, 9, 10, 12 is the sequence of the first 10 ugly numbers.
 
 Note that 1 is typically treated as an ugly number, and n does not exceed 1690.
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */
extension Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        if n <= 6 {
            return n
        }
        var result = [1]
        var num = n
        var L1 = 0
        var L2 = 0
        var L3 = 0
        
        while num > 1 {
            let m2 = result[L1] * 2
            let m3 = result[L2] * 3
            let m5 = result[L3] * 5
            let mn = min(m2, m3, m5)
            if mn == m2 {
                L1 += 1
            }
            if mn == m3 {
                L2 += 1
            }
            if mn == m5 {
                L3 += 1
            }
            result.append(mn)
            num -= 1
        }
        return result.last!
    }
}
