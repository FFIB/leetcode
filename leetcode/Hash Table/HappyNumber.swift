//
//  HappyNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//202. Happy Number
/*
 Write an algorithm to determine if a number is "happy".
 
 A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
 
 Example: 19 is a happy number
 
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1
 Credits:
 Special thanks to @mithmatt and @ts for adding this problem and creating all test cases.
 */
extension Solution {
    func isHappy(_ n: Int) -> Bool {
        var num = n
        var sums = [Int: Int]()
        sums[num] = 0
        while true {
            var sum = 0
            while num > 0 {
                sum += (num % 10) * (num % 10)
                num /= 10
            }
            if sum == 1 {
                return true
            }
            num = sum
            if sums[sum] != nil {
                return false
            }else{
                sums[sum] = 0
            }
        }
    }
}
