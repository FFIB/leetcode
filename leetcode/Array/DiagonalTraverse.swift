//
//  DiagonalTraverse.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        var result = [Int]()
        if matrix.isEmpty {
            return result
        }
        
        var row = 0
        var column = 0
        var d = 1
        let rowCount = matrix.count
        let columnCount = matrix[0].count
        for _ in 0..<(rowCount * columnCount) {
            result.append(matrix[row][column])
            row -= d
            column += d
            if row >= rowCount {
                row = rowCount - 1
                column += 2
                d = -d
            }
            if column >= columnCount {
                column = columnCount - 1
                row += 2
                d = -d
            }
            if row < 0 {
                row = 0
                d = -d
            }
            if column < 0 {
                column = 0
                d = -d
            }
        }
        return result
    }
}
