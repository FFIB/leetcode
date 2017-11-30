//
//  NextGreaterElementII.swift
//  leetcode
//
//  Created by FFIB on 2017/7/11.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//503. Next Greater Element II
/*
 Given a circular array (the next element of the last element is the first element of the array), print the Next Greater Number for every element. The Next Greater Number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, output -1 for this number.
 
 Example 1:
 Input: [1,2,1]
 Output: [2,-1,2]
 Explanation: The first 1's next greater number is 2;
 The number 2 can't find next greater number;
 The second 1's next greater number needs to search circularly, which is also 2.
 Note: The length of given array won't exceed 10000.
 */
extension Solution {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        for i in 0..<nums.count {
            var index = i != nums.count - 1 ? i + 1 : 0
            while nums[i] >= nums[index] {
                if i == index {
                    break
                }
                if index != nums.count - 1{
                    index += 1
                }else {
                    index = 0
                }
                
            }
            if i == index {
                res.append(-1)
            }else {
                res.append(nums[index])
            }
        }
        return res
    }
}
