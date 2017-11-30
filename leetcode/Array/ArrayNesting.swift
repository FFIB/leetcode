//
//  ArrayNesting.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//565 Array Nesting
//MARK: dimiss
extension Solution {
    func arrayNesting(_ nums: [Int]) -> Int {
        var res = 0
        var mutableNums = nums
        for i in 0..<mutableNums.count {
            
            if mutableNums[i] == -1 {
                continue
            }
            var count = 1
            var index = mutableNums[i]
            mutableNums[i] = -1
            while mutableNums[index] != -1 {
                count += 1
                let tmp = index
                index = mutableNums[index]
                mutableNums[tmp] = -1
                if index == -1 {
                    break
                }
            }
            res = max(count, res)
        }
        return res
    }
}
