//
//  BattleshipsinBoard.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//419. Battleships in a Board
/*
 Given an 2D board, count how many battleships are in it. The battleships are represented with 'X's, empty slots are represented with '.'s. You may assume the following rules:
 
 You receive a valid board, made of only battleships or empty slots.
 Battleships can only be placed horizontally or vertically. In other words, they can only be made of the shape 1xN (1 row, N columns) or Nx1 (N rows, 1 column), where N can be of any size.
 At least one horizontal or vertical cell separates between two battleships - there are no adjacent battleships.
 Example:
 X..X
 ...X
 ...X
 In the above board there are 2 battleships.
 Invalid Example:
 ...X
 XXXX
 ...X
 This is an invalid board that you will not receive - as battleships will always have a cell separating between them.
 Follow up:
 Could you do it in one-pass, using only O(1) extra memory and without modifying the value of the board?
 */
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
