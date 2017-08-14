//
//  LargestDivisibleSubset.swift
//  leetcode
//
//  Created by FFIB on 2017/8/13.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func largestDivisibleSubset(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else{
            return nums
        }
        let sortNums = nums.sorted()
        var arr = Array.init(repeating: 1, count: nums.count)
        var tmp = Array.init(repeating: -1, count: nums.count)
        for i in 1..<sortNums.count {
            for j in 0..<i {
                if nums[i] % nums[j] == 0 && arr[j] + 1 > arr[i] {
                    arr[i] = arr[j] + 1
                    tmp[i] = j
                }
            }
        }
        var index = arr.index(of: arr.max()!)!
        var res = [Int]()
        while index != -1 {
            res.append(sortNums[index])
            index = tmp[index]
        }
        return res.reversed()
    }
            
}
