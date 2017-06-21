//
//  SingleNumberIII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var dict = [Int : Int]()
        for i in nums {
            if dict[i] == nil {
                dict[i] = 1
            }else {
                dict[i] = dict[i]! + 1
            }
        }
        var result = [Int]()
        dict.forEach{
            if $0.value == 1 {
                result.append($0.key)
            }
        }
        return result
    }
}
