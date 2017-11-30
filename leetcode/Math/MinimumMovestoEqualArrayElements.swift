//
//  MinimumMovestoEqualArrayElements.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//453. Minimum Moves to Equal Array Elements
/*
 Given a non-empty integer array of size n, find the minimum number of moves required to make all array elements equal, where a move is incrementing n - 1 elements by 1.
 
 Example:
 
 Input:
 [1,2,3]
 
 Output:
 3
 
 Explanation:
 Only three moves are needed (remember each move increments two elements):
 
 [1,2,3]  =>  [2,3,3]  =>  [3,4,3]  =>  [4,4,4]
 */
extension Solution {
    func minMoves(_ nums: [Int]) -> Int {
        var minNum = nums[0]
        for i in nums {
            minNum = min(i, minNum)
        }
        var result = 0
        for i in nums {
            result += i - minNum
        }
        return result
    }
}
