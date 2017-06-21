//
//  PalindromeNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var nums = [Int]()
        var num = abs(x)
        while num > 0 {
            nums.append(num % 10)
            num /= 10
        }
        var left = 0
        var right = nums.count - 1
        while left < right {
            if nums[left] == nums[right] {
                left += 1
                right -= 1
                continue
            }else {
                return false
            }
            
        }
        return true
    }
}
