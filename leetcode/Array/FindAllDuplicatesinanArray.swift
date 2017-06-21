//
//  FindAllDuplicatesinanArray.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var numbers = nums
        for i in 0..<numbers.count {
            let index = abs(numbers[i]) - 1
            if numbers[index] < 0  {
                result.append(abs(numbers[i]))
            }
            numbers[index] = -numbers[index]
        }
        
        return result
    }
}
