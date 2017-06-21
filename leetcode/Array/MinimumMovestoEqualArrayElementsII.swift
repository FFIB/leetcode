//
//  MinimumMovestoEqualArrayElementsII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func minMoves2(_ nums: [Int]) -> Int {
        let sortNums = nums.sorted()
        let mid = sortNums[sortNums.count / 2]
        return sortNums.reduce(0, { (result, element) -> Int in
            return result + abs(element - mid)
        })
    }
}
