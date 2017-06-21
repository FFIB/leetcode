//
//  IslandPerimeter.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
