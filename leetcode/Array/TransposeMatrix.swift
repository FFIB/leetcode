//
//  TransposeMatrix.swift
//  leetcode
//
//  Created by FFIB on 2018/7/23.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//867. Transpose Matrix
/*
 Given a matrix A, return the transpose of A.

 The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row and column indices of the matrix.



 Example 1:

 Input: [[1,2,3],[4,5,6],[7,8,9]]
 Output: [[1,4,7],[2,5,8],[3,6,9]]
 Example 2:

 Input: [[1,2,3],[4,5,6]]
 Output: [[1,4],[2,5],[3,6]]


 Note:

 1 <= A.length <= 1000
 1 <= A[0].length <= 1000
 */
extension Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        guard !A.isEmpty else { return [] }
        var ans = Array(repeating: Array.init(repeating: 0, count: A.count), count: A[0].count)

        for (i, row) in A.enumerated() {
            for (j, a) in row.enumerated() {
                ans[j][i] = a
            }
        }

        return ans
    }
}
