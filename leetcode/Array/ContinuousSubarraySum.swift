//
//  ContinuousSubarraySum.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        if nums.isEmpty {
            return false
        }
        var dict = [0 : -1]
        var sum = 0
        for i in 0..<nums.count{
            sum += nums[i]
            let element = k == 0 ? sum : sum % k
            if dict[element] != nil {
                if i - dict[element]! > 1 {
                    return true
                }
            }else {
                dict[element] = i
            }
        }
        return false
    }
}
