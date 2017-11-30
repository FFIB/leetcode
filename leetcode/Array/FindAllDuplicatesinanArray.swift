//
//  FindAllDuplicatesinanArray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//442. Find All Duplicates in an Array
/*
 Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
 
 Find all the elements that appear twice in this array.
 
 Could you do it without extra space and in O(n) runtime?
 
 Example:
 Input:
 [4,3,2,7,8,2,3,1]
 
 Output:
 [2,3]
 */
extension Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var numbers = nums
        for i in 0..<numbers.count {
            let index = abs(numbers[i]) - 1
            if numbers[index] < 0  {
                result.append(abs(numbers[i]))
            }
            numbers[index] = -numbers[index]
        }
        return result
    }
}
