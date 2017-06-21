//
//  BattleshipsinBoard.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func countBattleships(_ board: [[Character]]) -> Int {
        var count = 0
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if board[i][j] == "X" {
                    if i != 0 {
                        if board[i - 1][j] == "X" {
                            continue
                        }
                    }
                    if j != 0 {
                        if board[i][j - 1] == "X" {
                            continue
                        }
                    }
                    count += 1
                }
            }
        }
        return count
    }
}
