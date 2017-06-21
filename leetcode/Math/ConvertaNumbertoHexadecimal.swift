//
//  ConvertaNumbertoHexadecimal.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func toHex(_ num: Int) -> String {
        if case 0..<10 = num{
            return "\(num)"
        }
        var n = num
        if num < 0 {
            n += 4294967296
        }
        var res = ""
        while n > 0 {
            let digit = n % 16
            if digit >= 10 {
                res = String(Character(UnicodeScalar(digit + 87)!)) + res
            }else {
                res = "\(digit)" + res
            }
            n /= 16
        }
        return res
    }
}
