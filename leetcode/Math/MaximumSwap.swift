//
//  MaximumSwap.swift
//  leetcode
//
//  Created by FFIB on 2017/9/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maximumSwap(_ num: Int) -> Int {
        var nums = "\(num)".characters.map{String($0)}
        let sortNums = nums.sorted{$0 > $1}
        for (i, (num1, num2)) in zip(nums, sortNums).enumerated() where num1 != num2{
            var index = 0
            for j in (i+1..<nums.count).reversed() where nums[j] == num2 {
                index = j
                break
            }
            nums[index] = num1
            nums[i] = num2
            break
        }
        return Int(nums.joined()) ?? 0
    }
}
