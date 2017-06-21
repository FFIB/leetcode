//
//  NthDigit.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
