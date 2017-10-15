//
//  DegreeofanArray.swift
//  leetcode
//
//  Created by FFIB on 2017/10/15.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        var dict = [Int: (Int, Int, Int)]()
        var maxCount = 0
        var ans = 0
        for (i, num) in nums.enumerated() {
            if dict[num] == nil {
                dict[num] = (1, i, i)
            }else {
                dict[num] = (dict[num]!.0 + 1, dict[num]?.1 ?? i, i)
            }
            if maxCount < dict[num]!.0 {
                maxCount = dict[num]!.0
                ans = dict[num]!.2 - dict[num]!.1 + 1
            }else if maxCount == dict[num]!.0 {
                ans = min(ans, dict[num]!.2 - dict[num]!.1 + 1)
            }
        }
        return ans
    }
}
