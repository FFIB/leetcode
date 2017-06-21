//
//  FindAllNumbersDisappearedInArray.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var currentNums = nums
        let count = nums.count
        var result = [Int]()
        var index = 0
        for i in 0..<count {
            index = abs(currentNums[i]) - 1
            if currentNums[index] > 0 {
                currentNums[index] = -currentNums[index]
            }
        }
        
        index = 0
        for i in 0..<count {
            if currentNums[i] > 0 {
                result.append(i + 1)
            }
        }
        return result
    }
}
