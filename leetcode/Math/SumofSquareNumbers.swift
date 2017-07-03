//
//  SumofSquareNumbers.swift
//  leetcode
//
//  Created by LISA on 2017/7/3.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        let value = sqrt(Double(c))
        if Double(Int(value)) == value {
            return true
        }else {
            for num in 0..<Int(ceil(value)) {
                let square = sqrt(Double(c - num * num))
                if Double(Int(square)) == square {
                    return true
                }
            }
            return false
        }
        
    }
}

