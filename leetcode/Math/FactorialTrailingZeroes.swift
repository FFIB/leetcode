//
//  FactorialTrailingZeroes.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//172. Factorial Trailing Zeroes
/*
 Given an integer n, return the number of trailing zeroes in n!.
 
 Note: Your solution should be in logarithmic time complexity.
 
 Credits:
 Special thanks to @ts for adding this problem and creating all test cases.
 */
extension Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var num = n
        var result = 0
        while num > 0 {
            num /= 5
            result += num
        }
        return result
    }
}
