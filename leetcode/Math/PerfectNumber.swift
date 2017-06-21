//
//  PerfectNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        if num <= 1 {
            return false
        }
        let sqrtNum = Int(sqrt(Double(num)))
        var sum = -num
        for i in 1...sqrtNum {
            if num % i == 0 {
                sum += i + num / i
            }
        }
        return sum == num
    }
}
