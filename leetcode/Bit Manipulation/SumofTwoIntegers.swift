//
//  SumofTwoIntegers.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//371. Sum of Two Integers
/*
 Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.
 
 Example:
 Given a = 1 and b = 2, return 3.
 
 Credits:
 Special thanks to @fujiaozhu for adding this problem and creating all test cases.
 */
extension Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        var c = a
        var d = b
        while d != 0 {
            let sum  = c ^ d
            let carry = (c & d) << 1
            c = sum
            d = carry
        }
        return c
    }
}
