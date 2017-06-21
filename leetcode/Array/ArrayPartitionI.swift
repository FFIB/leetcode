//
//  ArrayPartitionI.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var sum = 0
        let sortNums = nums.sorted()
        for (index, num) in sortNums.enumerated(){
            if index % 2 == 0{
                sum += num
            }
        }
        return sum
    }
}
