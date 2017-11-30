//
//  PowerofFour.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//342. Power of Four
/*
 Given an integer (signed 32 bits), write a function to check whether it is a power of 4.
 
 Example:
 Given num = 16, return true. Given num = 5, return false.
 
 Follow up: Could you solve it without loops/recursion?
 
 Credits:
 Special thanks to @yukuairoy for adding this problem and creating all test cases.
 */
extension Solution {
    func isPowerOfFour(_ num: Int) -> Bool {
        return num > 0 && (num - 1) & num == 0 && num & 0x55555555 != 0
    }
}
