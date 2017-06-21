//
//  NextGreaterElementI.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
        var result = [Int]()
        for num in findNums {
            var index = 0
            var isFind = false
            var isHave = false
            while index < nums.count {
                if isFind {
                    if nums[index] > num {
                        isHave = true
                        result.append(nums[index])
                        break
                    }
                }
                if nums[index] == num {
                    isFind = true
                }
                index += 1
            }
            if !isHave {
                result.append(-1)
            }
        }
        return result
        
    }
}
