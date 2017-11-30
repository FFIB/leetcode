//
//  MyPow.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//50. Pow(x, n)
/*
 Implement pow(x, n).
 
 
 Example 1:
 
 Input: 2.00000, 10
 Output: 1024.00000
 Example 2:
 
 Input: 2.10000, 3
 Output: 9.26100
 */
extension Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var tmp = x
        if n == 0 {
            return 1
        }
        tmp = myPow(x, n / 2);
        if n % 2 == 0 {
            return tmp * tmp;
        }else {
            if n > 0 {
                return x * tmp * tmp
            }else {
                return tmp * tmp / x
            }
        }
    }
}
