//
//  ReverseInteger.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//7. Reverse Integer
/*
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output:  321
 Example 2:
 
 Input: -123
 Output: -321
 Example 3:
 
 Input: 120
 Output: 21
 Note:
 Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 */
extension Solution {
    func reverse(_ x: Int) -> Int {
        if x >= 2147483647 || x < -2147483647{
            return 0
        }
        var value = x
        
        var output = 0
        while value != 0 {
            output = output * 10 + value % 10
            value /= 10
            if output >= 2147483647 || output <= -2147483647{
                return 0
            }
            
        }
        return output
        
    }
}
