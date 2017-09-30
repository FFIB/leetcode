//
//  ImageSmoother.swift
//  leetcode
//
//  Created by FFIB on 2017/9/30.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func imageSmoother(_ M: [[Int]]) -> [[Int]] {
        var res = Array(repeating: Array(repeating: 0, count: M.first?.count ?? 0), count: M.count)
        for i in 0..<M.count {
            for j in 0..<M[i].count {
                var n = 0
                var count = 0
                let minX = i == 0 ? 0 : -1
                let maxX = i == M.count - 1 ? 0 : 1
                let minY = j == 0 ? 0 : -1
                let maxY = j == M[i].count - 1 ? 0 : 1
                for x in minX...maxX {
                    for y in minY...maxY {
                        count += 1
                        n += M[i + x][j + y]
                    }
                }
                res[i][j] = n / count
            }
        }
        return res
    }
}
