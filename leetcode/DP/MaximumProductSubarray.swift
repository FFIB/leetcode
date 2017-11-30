//
//  MaximumProductSubarray.swift
//  leetcode
//
//  Created by FFIB on 2017/11/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//152. Maximum Product Subarray
/*
 Find the contiguous subarray within an array (containing at least one number) which has the largest product.
 
 For example, given the array [2,3,-2,4],
 the contiguous subarray [2,3] has the largest product = 6.
 */
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
