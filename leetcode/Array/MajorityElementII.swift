//
//  MajorityElementII.swift
//  leetcode
//
//  Created by LISA on 2017/7/25.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
