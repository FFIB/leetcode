//
//  RemoveDuplicatesfromSortedArrayII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//80. Remove Duplicates from Sorted Array II
/*
 Follow up for "Remove Duplicates":
 What if duplicates are allowed at most twice?
 
 For example,
 Given sorted array nums = [1,1,1,2,2,3],
 
 Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3. It doesn't matter what you leave beyond the new length.
 */
extension Solution {
    func removeDuplicatesII(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return nums.count
        }
        var element = 0
        var count = 0
        var index = 0
        for num in nums {
            if element == num {
                count += 1
            }else{
                element = num
                count = 1
            }
            if count > 2 {
                nums.remove(at: index)
                index -= 1
            }
            index += 1
        }
        return nums.count
    }
}
