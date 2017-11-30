//
//  SummaryRanges.swift
//  leetcode
//
//  Created by FFIB on 2017/6/25.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//228. Summary Ranges
/*
 Given a sorted integer array without duplicates, return the summary of its ranges.
 
 Example 1:
 Input: [0,1,2,4,5,7]
 Output: ["0->2","4->5","7"]
 Example 2:
 Input: [0,2,3,4,6,8,9]
 Output: ["0","2->4","6","8->9"]
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
 */

extension Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var res = [String]()
        var first = "\(nums.first!)"
        for i in 0..<nums.count {
            if i != 0 && nums[i] == nums[i - 1] + 1{
                res[res.count - 1] = first + "->" + "\(nums[i])"
            }else {
                first = "\(nums[i])"
                res.append("\(nums[i])")
            }
        }
        return res
    }
}
