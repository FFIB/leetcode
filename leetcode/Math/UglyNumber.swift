//
//  UglyNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
