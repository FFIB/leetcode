//
//  IntegerBreak.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//343. Integer Break
/*
 Given a positive integer n, break it into the sum of at least two positive integers and maximize the product of those integers. Return the maximum product you can get.
 
 For example, given n = 2, return 1 (2 = 1 + 1); given n = 10, return 36 (10 = 3 + 3 + 4).
 
 Note: You may assume that n is not less than 2 and not larger than 58.
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */
extension Solution {
    func integerBreak(_ n: Int) -> Int {
        if n == 2 {
            return 1
        }
        if n == 3{
            return 2
        }
        var num = n
        var res = 1
        while num > 4 {
            res *= 3
            num -= 3
        }
        return num > 0 ? res * num : res
    }
}
