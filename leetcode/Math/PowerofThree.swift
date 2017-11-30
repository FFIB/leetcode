//
//  PowerofThree.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//326. Power of Three
/*
 Given an integer, write a function to determine if it is a power of three.
 
 Follow up:
 Could you do it without using any loop / recursion?
 
 Credits:
 Special thanks to @dietpepsi for adding this problem and creating all test cases.
 */
extension Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        return n > 0 && (1162261467 % n == 0)
    }
}
