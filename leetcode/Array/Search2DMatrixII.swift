//
//  Search2DMatrixII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
