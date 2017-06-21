//
//  RotateImage.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var result = matrix
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                result[j][matrix[i].count - i - 1] = matrix[i][j]
            }
        }
        matrix = result
    }
}
