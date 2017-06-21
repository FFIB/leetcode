//
//  MajorityElement.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var max = 0
        var result = 0
        for i in nums {
            if dict[i] == nil{
                dict[i] = 1
            }else {
                dict[i] = dict[i]! + 1
            }
        }
        for i in dict.keys {
            if max < dict[i]! {
                max = dict[i]!
                result = i
            }
        }
        return result
    }
}
