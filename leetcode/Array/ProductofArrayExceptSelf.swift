//
//  ProductofArrayExceptSelf.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var zeroCount = 0
        let mult = nums.reduce(1, {
            if $1 != 0{
                return $0 * $1
            }else {
                zeroCount += 1
                return $0
            }
        })
        return nums.map{
            if zeroCount >= 2 {
                return 0
            }
            if $0 != 0 {
                if zeroCount == 1 {
                    return 0
                }
                return mult / $0
            }else{
                return mult
            }
        }
    }
}
