//
//  Search2DMatrix.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
