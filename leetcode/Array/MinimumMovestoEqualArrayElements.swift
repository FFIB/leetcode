//
//  MinimumMovestoEqualArrayElements.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
