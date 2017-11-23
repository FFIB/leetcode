//
//  WordSearch.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var arr = board
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if search(board: &arr, word: Array(word), i: i, j: j, pos: 0) {
                    return true
                }
            }
        }
        
        return false
    }
    
    func search(board: inout [[Character]], word: [Character], i: Int, j: Int, pos: Int) -> Bool{
        if word[pos] == board[i][j] {
            if pos == word.count - 1 {
                return true
            }else {
                let tmp = board[i][j]
                board[i][j] = "0"
                if i + 1 < board.count && search(board: &board, word: word, i: i + 1, j: j, pos: pos + 1) {
                    return true
                }
                if i - 1 >= 0 && search(board: &board, word: word, i: i - 1, j: j, pos: pos + 1) {
                    return true
                }
                if j + 1 < board[i].count && search(board: &board, word: word, i: i, j: j + 1, pos: pos + 1) {
                    return true
                }
                if j - 1 >= 0 && search(board: &board, word: word, i: i, j: j - 1, pos: pos + 1) {
                    return true
                }
                board[i][j] = tmp
                return false
            }
        }else {
            return false
        }
    }
}
