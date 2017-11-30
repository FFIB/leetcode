//
//  MinimumMovestoEqualArrayElementsII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//462. Minimum Moves to Equal Array Elements II
/*
 Given a non-empty integer array, find the minimum number of moves required to make all array elements equal, where a move is incrementing a selected element by 1 or decrementing a selected element by 1.
 
 You may assume the array's length is at most 10,000.
 
 Example:
 
 Input:
 [1,2,3]
 
 Output:
 2
 
 Explanation:
 Only two moves are needed (remember each move increments or decrements one element):
 
 [1,2,3]  =>  [2,2,3]  =>  [2,2,2]
 */
extension Solution {
    func minMoves2(_ nums: [Int]) -> Int {
        let sortNums = nums.sorted()
        let mid = sortNums[sortNums.count / 2]
        return sortNums.reduce(0, { (result, element) -> Int in
            return result + abs(element - mid)
        })
    }
}
