//
//  MajorityElementII.swift
//  leetcode
//
//  Created by FFIB on 2017/7/25.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//229. Majority Element II
/*
 Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times. The algorithm should run in linear time and in O(1) space.
 */

extension Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }
        return dict.filter { (element) -> Bool in
            return element.value >= nums.count / 3
            }.map{$0.key}
    }
}
