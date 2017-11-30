//
//  SuperPow.swift
//  leetcode
//
//  Created by FFIB on 2017/8/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//372. Super Pow
/*
 Your task is to calculate ab mod 1337 where a is a positive integer and b is an extremely large positive integer given in the form of an array.
 
 Example1:
 
 a = 2
 b = [3]
 
 Result: 8
 Example2:
 
 a = 2
 b = [1,0]
 
 Result: 1024
 Credits:
 Special thanks to @Stomach_ache for adding this problem and creating all test cases.
 */
extension Solution {
    func superPow(_ a: Int, _ b: [Int]) -> Int {
        var mod = 1337
        func quick_pow(num1: Int, num2: Int) -> Int{
            var num1 = num1
            var num2 = num2
            var res = 1
            num1 %= mod
            while num2 > 0 {
                if (num2 & 1) != 0 {
                    res = (res * num1) % mod
                }
                num1 = (num1 * num1) % mod
                num2 >>= 1
            }
            return res
        }
        var res = 1
        var a = a
        for num in b.reversed() {
            res = (res * quick_pow(num1: a, num2: num)) % mod
            a = quick_pow(num1: a, num2: 10)
        }
        return res
    }
}

