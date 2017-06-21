//
//  SpiralMatrixII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
