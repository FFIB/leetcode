//
//  UglyNumberII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//264. Ugly Number II
/*
 Write a program to find the n-th ugly number.
 
 Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 1, 2, 3, 4, 5, 6, 8, 9, 10, 12 is the sequence of the first 10 ugly numbers.
 
 Note that 1 is typically treated as an ugly number, and n does not exceed 1690.
 
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */
extension Solution {
    class Solution {
        func nthUglyNumber(_ n: Int) -> Int {
            guard n > 6 else { return n }

            var uglyNums = Array(repeating: 0, count: n)
            uglyNums[0] = 1
            var f2 = 2, f3 = 3, f5 = 5
            var i2 = 0, i3 = 0, i5 = 0

            for i in 1..<n {
                let num = min(f2, f3, f5)
                uglyNums[i] = num

                if f2 == num {
                    i2 += 1
                    f2 = 2 * uglyNums[i2]
                }

                if f3 == num {
                    i3 += 1
                    f3 = 3 * uglyNums[i3]
                }

                if f5 == num {
                    i5 += 1
                    f5 = 5 * uglyNums[i5]
                }
            }

            return uglyNums.last!
        }
    }

}
