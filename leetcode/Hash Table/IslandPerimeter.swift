//
//  IslandPerimeter.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//463. Island Perimeter
/*
 You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water. Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells). The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
 
 Example:
 
 [[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]
 
 Answer: 16
 Explanation: The perimeter is the 16 yellow stripes in the image below:
 */
extension Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        let gridCount = grid.count
        
        var perimeter = 0
        for i in 0..<gridCount {
            let subGrid = grid[i]
            let subCount = subGrid.count
            for j in 0..<subCount {
                let element = subGrid[j]
                if element == 1{
                    let top = i == 0 ? 1 : grid[i - 1][j] == 1 ? 0 : 1
                    let down = i == gridCount - 1 ? 1 : grid[i + 1][j] == 1 ? 0 : 1
                    let left = j == 0 ? 1 : grid[i][j - 1] == 1 ? 0 : 1
                    let right = j == subCount - 1 ? 1 : grid[i][j + 1] == 1 ? 0 : 1
                    
                    perimeter += (top + down + right + left)
                }
            }
        }
        return perimeter
    }
}
