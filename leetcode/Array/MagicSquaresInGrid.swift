//
//  MagicSquaresInGrid.swift
//  leetcode
//
//  Created by FFIB on 2018/6/1.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//840. Magic Squares In Grid
/*
 A 3 x 3 magic square is a 3 x 3 grid filled with distinct numbers from 1 to 9 such that each row, column, and both diagonals all have the same sum.

 Given an grid of integers, how many 3 x 3 "magic square" subgrids are there?  (Each subgrid is contiguous).



 Example 1:

 Input: [[4,3,8,4],
 [9,5,1,9],
 [2,7,6,2]]
 Output: 1
 Explanation:
 The following subgrid is a 3 x 3 magic square:
 438
 951
 276

 while this one is not:
 384
 519
 762

 In total, there is only one magic square inside the given grid.
 Note:

 1 <= grid.length <= 10
 1 <= grid[0].length <= 10
 0 <= grid[i][j] <= 15
 */
extension Solution {
    func numMagicSquaresInside(_ grid: [[Int]]) -> Int {

        func check(i: Int, j: Int) -> Bool {
            var values = [Int]()
            var counts = Array(repeating: 0, count: 10)
            for x in i...i+2 {
                for y in j...j+2 {
                    let v = grid[x][y]
                    guard v > 0, v < 10, counts[v] == 0 else { return false }
                    values.append(v)
                    counts[v] = 1
                }
            }
            return values[0] + values[1] + values[2] == 15 &&
                values[3] + values[4] + values[5] == 15 &&
                values[6] + values[7] + values[8] == 15 &&
                values[0] + values[3] + values[6] == 15 &&
                values[1] + values[4] + values[7] == 15 &&
                values[2] + values[5] + values[8] == 15 &&
                values[0] + values[4] + values[8] == 15 &&
                values[2] + values[4] + values[6] == 15
        }

        guard grid.count > 2, grid[0].count > 2 else { return 0 }
        var ans = 0
        for i in 0..<grid.count-2 {
            for j in 0..<grid[i].count-2
                where grid[i+1][j+1] == 5 {
                    ans += check(i: i, j: j) ? 1 : 0
            }
        }

        return ans
    }
}
