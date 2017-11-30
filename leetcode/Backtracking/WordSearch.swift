//
//  WordSearch.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//79. Word Search
/*
 Given a 2D board and a word, find if the word exists in the grid.
 
 The word can be constructed from letters of sequentially adjacent cell, where "adjacent" cells are those horizontally or vertically neighboring. The same letter cell may not be used more than once.
 
 For example,
 Given board =
 
 [
 ['A','B','C','E'],
 ['S','F','C','S'],
 ['A','D','E','E']
 ]
 word = "ABCCED", -> returns true,
 word = "SEE", -> returns true,
 word = "ABCB", -> returns false.
 */
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
