//
//  HouseRobber.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func rob(_ nums: [Int]) -> Int {
        var even = 0
        var odd = 0
        for i in 0..<nums.count {
            if i % 2 == 0 {
                even = max(even + nums[i], odd)
            }else {
                odd = max(odd + nums[i], even)
            }
        }
        return max(even, odd)
    }
}
