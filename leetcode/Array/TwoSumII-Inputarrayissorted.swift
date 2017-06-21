//
//  TwoSumII-Inputarrayissorted.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func twoSumII(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1, right + 1]
            }else if sum < target {
                left += 1
            }else {
                right -= 1
            }
        }
        return []
        
    }
}
