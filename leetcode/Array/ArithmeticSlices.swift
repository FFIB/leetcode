//
//  ArithmeticSlices.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func numberOfArithmeticSlices(_ A: [Int]) -> Int {
        var result = 0
        if A.count < 3 {
            return 0
        }
        var incremental = 0
        for i in 2..<A.count {
            if A[i] - A[i - 1] == A[i - 1] - A[i - 2] {
                incremental += 1
                result += incremental
            }else {
                incremental = 0
            }
        }
        return result
    }
}
