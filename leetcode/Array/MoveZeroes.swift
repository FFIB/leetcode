//
//  MoveZeroes.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount = 0
        for i in 0..<nums.count {
            while nums[i] == 0 {
                zeroCount += 1
                nums.append(nums[i])
                nums.remove(at: i)
                if zeroCount >= nums.count - i {
                    return
                }
            }
        }
    }
}
