//
//  ContainsDuplicateII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//219. Contains Duplicate II
/*
 Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.
 */
extension Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict = [Int: Int]()
        var result = false
        for i in 0..<nums.count {
            let num = nums[i]
            if dict[num] == nil {
                dict[num] = i
            }else {
                if result  {
                    return result
                }
                result = i - dict[num]! <= k
                dict[num] = i
            }
            
        }
        return result
    }
}
