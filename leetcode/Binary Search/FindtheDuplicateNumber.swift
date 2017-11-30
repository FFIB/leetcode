//
//  FindtheDuplicateNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//287. Find the Duplicate Number
/*
 Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.
 
 Note:
 You must not modify the array (assume the array is read only).
 You must use only constant, O(1) extra space.
 Your runtime complexity should be less than O(n2).
 There is only one duplicate number in the array, but it could be repeated more than once.
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */
extension Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var duplicates = [Int]()
        var mutableNums = nums
        for i in mutableNums {
            if mutableNums[i] >= 0 {
                mutableNums[i] = -mutableNums[i]
            }else {
                duplicates.append(i)
            }
        }
        guard let min = duplicates.min() else{
            return 0
        }
        return min
    }
}
