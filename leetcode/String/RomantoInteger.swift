//
//  RomantoInteger.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func romanToInt(_ s: String) -> Int {
        var dict = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
        var digit = [Int]()
        var result = 0
        for i in s {
            digit.append(dict[String(i)]!)
            
        }
        
        for i in 0..<digit.count {
            
            if i > 0 && digit[i] > digit[i - 1] {
                result += digit[i] - digit[i - 1] * 2
            }else {
                result += digit[i]
            }
        }
        
        return result
    }
}

