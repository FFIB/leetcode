//
//  ContiguousArray.swift
//  leetcode
//
//  Created by FFIB on 2018/2/1.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//525. Contiguous Array
/*
 Given a binary array, find the maximum length of a contiguous subarray with equal number of 0 and 1.

 Example 1:
 Input: [0,1]
 Output: 2
 Explanation: [0, 1] is the longest contiguous subarray with equal number of 0 and 1.
 Example 2:
 Input: [0,1,0]
 Output: 2
 Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.
 Note: The length of the given binary array will not exceed 50,000.
 */
extension Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        var dict = [0: -1]
        var sum = 0
        var ml = 0

        for (i, num) in (nums.enumerated()) {
            sum += num == 0 ? -1 : 1
            if let v = dict[sum] {
                ml = max(ml, i - v)
            }else {
                dict[sum] = i
            }
            print(dict)
        }

        return ml
    }
}
