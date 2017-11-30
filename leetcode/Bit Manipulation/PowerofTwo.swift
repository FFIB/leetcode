//
//  PowerofTwo.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//231. Power of Two
/*
 Given an integer, write a function to determine if it is a power of two.
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */
extension Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        return n > 0 && !(n&(n-1) > 0)
    }
}
