//
//  ToeplitzMatrix.swift
//  leetcode
//
//  Created by FFIB on 2018/2/7.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//766. Toeplitz Matrix
/*
 A matrix is Toeplitz if every diagonal from top-left to bottom-right has the same element.

 Now given an M x N matrix, return True if and only if the matrix is Toeplitz.


 Example 1:

 Input: matrix = [[1,2,3,4],[5,1,2,3],[9,5,1,2]]
 Output: True
 Explanation:
 1234
 5123
 9512

 In the above grid, the diagonals are "[9]", "[5, 5]", "[1, 1, 1]", "[2, 2, 2]", "[3, 3]", "[4]", and in each diagonal all elements are the same, so the answer is True.
 Example 2:

 Input: matrix = [[1,2],[2,2]]
 Output: False
 Explanation:
 The diagonal "[1, 2]" has different elements.
 Note:

 matrix will be a 2D array of integers.
 matrix will have a number of rows and columns in range [1, 20].
 matrix[i][j] will be integers in range [0, 99].
 */
extension Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        guard !matrix.isEmpty else { return false }

        let width = matrix.count
        let height = matrix[0].count

        for (index, row) in matrix.enumerated() {
            var i = index + 1, j = 1
            let num = row[0]
            while i < width && j < height {
                if num != matrix[i][j] { return false }
                i += 1
                j += 1
            }
        }

        for (index, column) in matrix[0].enumerated() {
            guard index > 0 else { continue }
            var i = 1, j = index + 1
            let num = column
            while i < width && j < height {
                if num != matrix[i][j] { return false }
                i += 1
                j += 1
            }
        }
        return true
    }
}
