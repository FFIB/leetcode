//
//  SubarrayProductLessThanK.swift
//  leetcode
//
//  Created by FFIB on 2017/10/22.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        if k <= 1 { return 0 }
        var prod = 1
        var ans = 0
        var j = 0
        for i in 0..<nums.count {
            if i > 0 && i <= j {
                prod /= nums[i - 1]
            }else {
                j = i
            }
            while j < nums.count && prod * nums[j] < k {
                prod *= nums[j]
                j += 1
            }
            ans += j - i
        }
        return ans
    }
}
