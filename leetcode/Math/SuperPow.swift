//
//  SuperPow.swift
//  leetcode
//
//  Created by FFIB on 2017/8/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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

