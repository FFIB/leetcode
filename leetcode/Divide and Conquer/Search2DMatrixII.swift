//
//  Search2DMatrixII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//240. Search a 2D Matrix II
/*
 Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:
 
 Integers in each row are sorted in ascending from left to right.
 Integers in each column are sorted in ascending from top to bottom.
 For example,
 
 Consider the following matrix:
 
 [
 [1,   4,  7, 11, 15],
 [2,   5,  8, 12, 19],
 [3,   6,  9, 16, 22],
 [10, 13, 14, 17, 24],
 [18, 21, 23, 26, 30]
 ]
 Given target = 5, return true.
 
 Given target = 20, return false.
 */
extension Solution {
    func searchMatrixII(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty {
            return false
        }
        for i in 0..<matrix[0].count {
            if case matrix[0][i]...matrix[matrix.count - 1][i] = target {
                for j in 0..<matrix.count {
                    if matrix[j][i] == target {
                        return true
                    }
                }
            }
        }
        return false
    }
}
