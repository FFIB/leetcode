//
//  NextGreaterElementII.swift
//  leetcode
//
//  Created by LISA on 2017/7/11.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        for i in 0..<nums.count {
            var index = i != nums.count - 1 ? i + 1 : 0
            while nums[i] >= nums[index] {
                if i == index {
                    break
                }
                print(nums[i])
                print(nums[index])
                if index != nums.count - 1{
                    index += 1
                }else {
                    index = 0
                }
                
            }
            if i == index {
                res.append(-1)
            }else {
                res.append(nums[index])
            }
        }
        return res
    }
}
