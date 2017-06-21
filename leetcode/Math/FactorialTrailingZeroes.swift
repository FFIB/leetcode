//
//  FactorialTrailingZeroes.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var num = n
        var result = 0
        while num > 0 {
            num /= 5
            result += num
        }
        return result
    }
}
