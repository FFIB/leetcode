//
//  ValidPerfectSquare.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//367. Valid Perfect Square
/*
 Given a positive integer num, write a function which returns True if num is a perfect square else False.
 
 Note: Do not use any built-in library function such as sqrt.
 
 Example 1:
 
 Input: 16
 Returns: True
 Example 2:
 
 Input: 14
 Returns: False
 Credits:
 Special thanks to @elmirap for adding this problem and creating all test cases.
 */
extension Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        let sqrtNum =  Int(sqrt(Double(num)))
        return num == sqrtNum * sqrtNum
    }
}
