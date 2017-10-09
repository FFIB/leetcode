//
//  MaxAreaofIsland.swift
//  leetcode
//
//  Created by FFIB on 2017/10/9.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var mutableGrid = grid
        func bfs(i: Int, j: Int) -> Int{
            let dxs = [1, 0, -1, 0]
            let dys = [0, 1, 0, -1]
            var queue = [(i, j)]
            var res = 0
            while !queue.isEmpty {
                let (x, y) = queue.removeLast()
                res += 1
                for (dx, dy) in zip(dxs, dys) {
                    let finalX = dx + x
                    let finalY = dy + y
                    if finalX < mutableGrid.count,
                        finalX >= 0,
                        finalY >= 0,
                        finalY < mutableGrid[finalX].count,
                        mutableGrid[finalX][finalY] == 1 {
                        mutableGrid[finalX][finalY] = 0
                        queue.append((finalX, finalY))
                    }
                }
            }
            return res
        }
        var ans = 0
        for i in 0..<mutableGrid.count {
            for j in 0..<mutableGrid[i].count
                where mutableGrid[i][j] == 1 {
                    mutableGrid[i][j] = 0
                    ans = max(ans, bfs(i: i, j: j))
            }
        }
        return ans
    }
}
