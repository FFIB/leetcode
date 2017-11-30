//
//  SpiralMatrix.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//54. Spiral Matrix
/*
 Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.
 
 For example,
 Given the following matrix:
 
 [
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
 ]
 You should return [1,2,3,6,9,8,7,4,5].
 */
extension Solution{
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.isEmpty {
            return []
        }
        var res = [Int]()
        var a = 0    //x初始
        var b = 0    //y初始
        var c = matrix[0].count - 1  //y结束
        var d = matrix.count - 1     //x结束
        while true {
            for i in b...c {
                res.append(matrix[a][i])
            }
            if a >= d {
                break
            }
            a += 1
            for i in a...d {
                res.append(matrix[i][c])
            }
            if b >= c  {
                break
            }
            c -= 1
            for i in (b...c).reversed() {
                res.append(matrix[d][i])
            }
            if a >= d {
                break
            }
            d -= 1
            for i in (a...d).reversed() {
                res.append(matrix[i][b])
            }
            if b >= c {
                break
            }
            b += 1
        }
        return res
    }
}
