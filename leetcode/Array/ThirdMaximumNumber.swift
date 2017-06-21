//
//  ThirdMaximumNumber.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var max : Int? = nil
        var min : Int? = nil
        var middle : Int? = nil
        for i in nums {
            if i == max || i == middle || i == min {
                continue
            }
            if max == nil || i > max! {
                min = middle
                middle = max
                max = i
            }else if middle == nil || i > middle! {
                min = middle
                middle = i
            }else if min == nil || i > min! {
                min = i
            }
        }
        return (min != nil ? min : max)!
    }
}
