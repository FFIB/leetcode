//
//  ContainsDuplicateII.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict = [Int: Int]()
        var result = false
        for i in 0..<nums.count {
            let num = nums[i]
            if dict[num] == nil {
                dict[num] = i
            }else {
                if result  {
                    return result
                }
                result = i - dict[num]! <= k
                dict[num] = i
            }
            
        }
        return result
    }
}
