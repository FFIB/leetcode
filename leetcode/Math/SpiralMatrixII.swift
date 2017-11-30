//
//  SpiralMatrixII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//59. Spiral Matrix II
/*
 Given an integer n, generate a square matrix filled with elements from 1 to n2 in spiral order.
 
 For example,
 Given n = 3,
 
 You should return the following matrix:
 [
 [ 1, 2, 3 ],
 [ 8, 9, 4 ],
 [ 7, 6, 5 ]
 ]
 */
extension Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        if n == 0{
            return [[Int]]()
        }
        var a = 0
        var b = 0
        var c = n - 1
        var d = n - 1
        var res = (0..<n).map{_ in (0..<n).map{$0}}
        var element = 0
        while true {
            for i in b...c {
                element += 1
                res[a][i] = element
            }
            if a >= d {
                break
            }
            a += 1
            for i in a...d {
                element += 1
                res[i][c] = element
            }
            if b >= c  {
                break
            }
            c -= 1
            for i in (b...c).reversed() {
                element += 1
                res[d][i] = element
            }
            if a >= d {
                break
            }
            d -= 1
            for i in (a...d).reversed() {
                element += 1
                res[i][b] = element
            }
            if b >= c {
                break
            }
            b += 1
        }
        return res
    }
}
