//
//  FindtheDuplicateNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var duplicates = [Int]()
        var mutableNums = nums
        for i in mutableNums {
            if mutableNums[i] >= 0 {
                mutableNums[i] = -mutableNums[i]
            }else {
                duplicates.append(i)
            }
        }
        guard let min = duplicates.min() else{
            return 0
        }
        return min
    }
}
