//
//  HappyNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
