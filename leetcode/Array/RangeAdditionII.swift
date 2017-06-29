//
//  RangeAdditionII.swift
//  leetcode
//
//  Created by LISA on 2017/6/29.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
        if ops.isEmpty {
            return 0
        }
        var maxMatrixs = (row: m,line:n)
        for operation in ops {
            if operation[0] < maxMatrixs.row {
                maxMatrixs.row = operation[0]
            }
            if operation[1] < maxMatrixs.line {
                maxMatrixs.line = operation[1]
            }
        }
        return maxMatrixs.row * maxMatrixs.line
    }
}
