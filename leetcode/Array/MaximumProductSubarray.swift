//
//  MaximumProductSubarray.swift
//  leetcode
//
//  Created by FFIB on 2017/11/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        
        guard !nums.isEmpty else { return 0 }
        
        var positive = nums[0]
        var negative = positive
        var ans = positive
        
        for (i, num) in nums.enumerated() where i > 0 {
            if num > 0 {
                positive = max(positive * num, num)
                negative = min(negative * num, num)
            }else {
                let tmp = positive
                positive = max(negative * num, num)
                negative = min(tmp * num, num)
            }
            ans = max(positive, ans)
        }
        
        return ans
    }
}
