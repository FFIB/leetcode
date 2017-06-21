//
//  DistributeCandies.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func distributeCandies(_ candies: [Int]) -> Int {
        var set = Set<Int>()
        for candy in candies {
            set.insert(candy)
        }
        return set.count < candies.count / 2 ? set.count : candies.count / 2
    }
}
