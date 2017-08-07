//
//  SetMatrixZeroes.swift
//  leetcode
//
//  Created by FFIB on 2017/8/7.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var row_empty = false
        var col_empty = false
        let rows = matrix[0].count
        let cols = matrix.count
        for i in 0..<rows {
            if matrix[0][i] == 0 {
                row_empty = true
                break
            }
        }
        for i in 0..<cols {
            if matrix[i][0] == 0 {
                col_empty = true
                break
            }
        }
        for i in 1..<matrix.count {
            for j in 1..<matrix[i].count {
                if matrix[i][j] == 0 {
                    matrix[i][0] = 0
                    matrix[0][j] = 0
                }
            }
        }
        for i in 1..<matrix.count {
            for j in 1..<matrix[i].count {
                if matrix[i][0] == 0 || matrix[0][j] == 0 {
                    matrix[i][j] = 0
                }
            }
        }
        if row_empty {
            for i in 0..<rows {
                matrix[0][i] = 0
            }
        }
        if col_empty {
            for i in 0..<cols {
                matrix[i][0] = 0
            }
        }
    }
}
