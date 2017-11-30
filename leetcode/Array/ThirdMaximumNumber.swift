//
//  ThirdMaximumNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//414 Third Maximum Number
/*
 Given a non-empty array of integers, return the third maximum number in this array. If it does not exist, return the maximum number. The time complexity must be in O(n).
 
 Example 1:
 Input: [3, 2, 1]
 
 Output: 1
 
 Explanation: The third maximum is 1.
 Example 2:
 Input: [1, 2]
 
 Output: 2
 
 Explanation: The third maximum does not exist, so the maximum (2) is returned instead.
 Example 3:
 Input: [2, 2, 3, 1]
 
 Output: 1
 
 Explanation: Note that the third maximum here means the third maximum distinct number.
 Both numbers with value 2 are both considered as second maximum.
 */
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
