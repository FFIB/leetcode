//
//  ContainsDuplicate.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//217. Contains Duplicate
/*
 Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 */
extension Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        for i in nums {
            if dict[i] != nil {
                return true
            }
            dict[i] = 1
        }
        
        return false
    }
}
