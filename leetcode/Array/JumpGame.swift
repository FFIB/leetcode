//
//  JumpGame.swift
//  leetcode
//
//  Created by FFIB on 2017/8/6.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var index = 1
        for i in 0..<nums.count {
            if index < i + 1 {
                break
            }
            index = max(index, i + 1 + nums[i])
        }
        return index >= nums.count
    }
}
