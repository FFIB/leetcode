//
//  CountNumberswithUniqueDigits.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//357. Count Numbers with Unique Digits
/*
 Given a non-negative integer n, count all numbers with unique digits, x, where 0 ≤ x < 10n.
 
 Example:
 Given n = 2, return 91. (The answer should be the total numbers in the range of 0 ≤ x < 100, excluding [11,22,33,44,55,66,77,88,99])
 
 Credits:
 Special thanks to @memoryless for adding this problem and creating all test cases.
 */
extension Solution {
    func countNumbersWithUniqueDigits(_ n: Int) -> Int {
        var result = 0
        if n == 1 {
            return 10
        }else if n == 0 {
            return 1
        }
        for i in 2...n {
            var temp = 1
            for j in 2...i {
                temp *= 9 - j + 2
            }
            result += temp * 9
        }
        return result + 10
    }
}
