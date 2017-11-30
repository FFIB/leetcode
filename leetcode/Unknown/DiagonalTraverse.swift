//
//  DiagonalTraverse.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//498. Diagonal Traverse
/*
 Given a matrix of M x N elements (M rows, N columns), return all elements of the matrix in diagonal order as shown in the below image.
 
 Example:
 Input:
 [
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
 ]
 Output:  [1,2,4,7,5,3,6,8,9]
 Explanation:
 
 Note:
 The total number of elements of the given matrix will not exceed 10,000.
 */
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
