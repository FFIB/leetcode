//
//  ImageSmoother.swift
//  leetcode
//
//  Created by FFIB on 2017/9/30.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//661. Image Smoother
/*
 Given a 2D integer matrix M representing the gray scale of an image, you need to design a smoother to make the gray scale of each cell becomes the average gray scale (rounding down) of all the 8 surrounding cells and itself. If a cell has less than 8 surrounding cells, then use as many as you can.
 
 Example 1:
 Input:
 [[1,1,1],
 [1,0,1],
 [1,1,1]]
 Output:
 [[0, 0, 0],
 [0, 0, 0],
 [0, 0, 0]]
 Explanation:
 For the point (0,0), (0,2), (2,0), (2,2): floor(3/4) = floor(0.75) = 0
 For the point (0,1), (1,0), (1,2), (2,1): floor(5/6) = floor(0.83333333) = 0
 For the point (1,1): floor(8/9) = floor(0.88888889) = 0
 Note:
 The value in the given matrix is in the range of [0, 255].
 The length and width of the given matrix are in the range of [1, 150].

 */
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
