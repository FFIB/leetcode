//
//  IncreasingTripletSubsequence.swift
//  leetcode
//
//  Created by LISA on 2017/6/22.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var first = nums.max()!
        var second = nums.max()!
        for num in nums {
            switch num {
            case let x where first > x:
                first = x
            case let x where second > x && x > first:
                second = x
            case let x where second < x:
                return false
            default:
                continue
            }
        }
        return false
    }
}
