//
//  SurroundedRegions.swift
//  leetcode
//
//  Created by FFIB on 2018/1/29.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func solve(_ board: inout [[Character]]) {

        func bfs(x: Int, y: Int) {
            guard board[x][y] == "O" else { return }
            board[x][y] = "#"
            var queue = [(x, y)]
            while !queue.isEmpty {
                let top = queue.removeLast()
                if top.0 > 0 && board[top.0 - 1][top.1] == "O" {
                    board[top.0 - 1][top.1] = "#"
                    queue.append((top.0 - 1, top.1))
                }
                if top.0 < board.count - 1 && board[top.0 + 1][top.1] == "O" {
                    board[top.0 + 1][top.1] = "#"
                    queue.append((top.0 + 1, top.1))
                }
                if top.1 > 0 && board[top.0][top.1 - 1] == "O" {
                    board[top.0][top.1 - 1] = "#"
                    queue.append((top.0, top.1 - 1))
                }
                if top.1 < board[0].count - 1 && board[top.0][top.1 + 1] == "O" {
                    board[top.0][top.1 + 1] = "#"
                    queue.append((top.0, top.1 + 1))
                }
            }
        }

        guard board.count > 2 && board[0].count > 2 else { return }

        for j in 0..<board[0].count {
            bfs(x: 0, y: j)
            bfs(x: board.count - 1, y: j)
        }

        for i in 1..<board.count - 1 {
            bfs(x: i, y: 0)
            bfs(x: i, y: board[0].count - 1)
        }

        for i in 1..<board.count {
            for j in 1..<board[i].count {
                if board[i][j] == "O" {
                    board[i][j] = "X"
                }else if board[i][j] == "#" {
                    board[i][j] = "O"
                }
            }
        }
    }
}
