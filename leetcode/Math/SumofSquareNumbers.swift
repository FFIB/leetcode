//
//  SumofSquareNumbers.swift
//  leetcode
//
//  Created by FFIB on 2017/7/3.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//633. Sum of Square Numbers
/*
 Given a non-negative integer c, your task is to decide whether there're two integers a and b such that a2 + b2 = c.
 
 Example 1:
 Input: 5
 Output: True
 Explanation: 1 * 1 + 2 * 2 = 5
 Example 2:
 Input: 3
 Output: False
 */
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

