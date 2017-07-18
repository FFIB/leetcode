//
//  RotateFunction.swift
//  leetcode
//
//  Created by LISA on 2017/7/18.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxRotateFunction(_ A: [Int]) -> Int {
        var numSum = 0
        var sum = 0
        if A.count <= 1 {
            return 0
        }
        for i in 0..<A.count {
            sum += A[i] * i
            numSum += A[i]
        }
        var res = sum
        for i in (1...A.count - 1).reversed() {
            sum = sum - A[i] * (A.count) + numSum
            res = max(sum, res)
        }
        return res
    }
}
