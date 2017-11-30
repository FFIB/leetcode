//
//  EliminationGame.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//390. Elimination Game
/*
 There is a list of sorted integers from 1 to n. Starting from left to right, remove the first number and every other number afterward until you reach the end of the list.
 
 Repeat the previous step again, but this time from right to left, remove the right most number and every other number from the remaining numbers.
 
 We keep repeating the steps again, alternating left to right and right to left, until a single number remains.
 
 Find the last number that remains starting with a list of length n.
 
 Example:
 
 Input:
 n = 9,
 1 2 3 4 5 6 7 8 9
 2 4 6 8
 2 6
 6
 
 Output:
 6
 */
extension Solution {
    func lastRemaining(_ n: Int) -> Int {
        var num = n
        var res = 1
        var p = 1
        var cnt = 0
        while num > 1 {
            num /= 2
            cnt += 1
            p *= 2
            if cnt % 2 == 1 {
                res += (p / 2 + p * (num - 1))
            }else {
                res -= (p / 2 + p * (num - 1))
            }
        }
        return res
    }
}
