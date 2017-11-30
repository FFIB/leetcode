//
//  UglyNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//263. Ugly Number
/*
 Write a program to check whether a given number is an ugly number.
 
 Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
 
 Note that 1 is typically treated as an ugly number.
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */
extension Solution {
    func isUgly(_ num: Int) -> Bool {
        var number = num
        if number < 1 {
            return false
        }
        while number % 2 == 0  {
            number /= 2
        }
        while number % 3 == 0 {
            number /= 3
        }
        while number % 5 == 0 {
            number /= 5
        }
        return number == 1
    }
}
