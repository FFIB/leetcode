//
//  MaximumDistanceInArrays.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxDistance(_ arrays: [[Int]]) -> Int {
        var maxNum = (arrays.first?.last)!
        var minNum: Int = (arrays.first?.first)!
        var res = 0
        for i in 1..<arrays.count {
            res = max(maxNum - arrays[i].first!, res)
            res = max(arrays[i].last! - minNum, res)
            maxNum = max(arrays[i].last!, maxNum)
            minNum = min(arrays[i].first!, minNum)
        }
        return res
    }
}
