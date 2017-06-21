//
//  MyPow.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
