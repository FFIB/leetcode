//
//  FindAllNumbersDisappearedInArray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//448. Find All Numbers Disappeared in an Array
/*
 Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
 
 Find all the elements of [1, n] inclusive that do not appear in this array.
 
 Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
 
 Example:
 
 Input:
 [4,3,2,7,8,2,3,1]
 
 Output:
 [5,6]
 */
extension Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var currentNums = nums
        let count = nums.count
        var result = [Int]()
        var index = 0
        for i in 0..<count {
            index = abs(currentNums[i]) - 1
            if currentNums[index] > 0 {
                currentNums[index] = -currentNums[index]
            }
        }
        
        index = 0
        for i in 0..<count {
            if currentNums[i] > 0 {
                result.append(i + 1)
            }
        }
        return result
    }
}
