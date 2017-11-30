//
//  Search2DMatrix.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//74. Search a 2D Matrix
/*
 Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:
 
 Integers in each row are sorted from left to right.
 The first integer of each row is greater than the last integer of the previous row.
 For example,
 
 Consider the following matrix:
 
 [
 [1,   3,  5,  7],
 [10, 11, 16, 20],
 [23, 30, 34, 50]
 ]
 Given target = 3, return true.
 */
extension Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty {
            return false
        }
        if matrix[0].isEmpty {
            return false
        }
        for element in matrix {
            if case element[0]...element[element.count - 1] = target {
                return element.contains(target)
            }
        }
        return false
    }
}
