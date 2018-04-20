//
//  MaxIncreasetoKeepCitySkyline.swift
//  leetcode
//
//  Created by FFIB on 2018/4/20.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//807. Max Increase to Keep City Skyline
/*
 In a 2 dimensional array grid, each value grid[i][j] represents the height of a building located there. We are allowed to increase the height of any number of buildings, by any amount (the amounts can be different for different buildings). Height 0 is considered to be a building as well.

 At the end, the "skyline" when viewed from all four directions of the grid, i.e. top, bottom, left, and right, must be the same as the skyline of the original grid. A city's skyline is the outer contour of the rectangles formed by all the buildings when viewed from a distance. See the following example.

 What is the maximum total sum that the height of the buildings can be increased?

 Example:
 Input: grid = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
 Output: 35
 Explanation:
 The grid is:
 [ [3, 0, 8, 4],
 [2, 4, 5, 7],
 [9, 2, 6, 3],
 [0, 3, 1, 0] ]

 The skyline viewed from top or bottom is: [9, 4, 8, 7]
 The skyline viewed from left or right is: [8, 7, 9, 3]

 The grid after increasing the height of buildings without affecting skylines is:

 gridNew = [ [8, 4, 8, 7],
 [7, 4, 7, 7],
 [9, 4, 8, 7],
 [3, 3, 3, 3] ]

 Notes:

 1 < grid.length = grid[0].length <= 50.
 All heights grid[i][j] are in the range [0, 100].
 All buildings in grid[i][j] occupy the entire grid cell: that is, they are a 1 x 1 x grid[i][j] rectangular prism.
 */
extension Solution {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        var maxRow = grid.map{ return $0.max()! }
        var maxColumn = [Int]()
        for i in 0..<grid[0].count {
            var maxLine = -1
            for j in 0..<grid.count {
                maxLine = max(maxLine, grid[j][i])
            }
            maxColumn.append(maxLine)
        }

        var ans = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                ans += min(maxRow[i], maxColumn[j]) - grid[i][j]
            }
        }
        return ans
    }
}
