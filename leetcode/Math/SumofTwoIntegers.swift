//
//  SumofTwoIntegers.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
