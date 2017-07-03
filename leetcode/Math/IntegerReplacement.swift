//
//  IntegerReplacement.swift
//  leetcode
//
//  Created by LISA on 2017/7/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func integerReplacement(_ n: Int) -> Int {
        if n == 1 {
            return 0
        }
        if n % 2 == 0 {
            return integerReplacement(n / 2) + 1
        }
        return min(integerReplacement(n + 1), integerReplacement(n - 1))
    }
}
