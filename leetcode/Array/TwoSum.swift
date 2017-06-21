//
//  TwoSum.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var digitalDic : [Int : Int] = [:]
        for (index, value) in nums.enumerated() {
            if let matchIndex = digitalDic[target - value] {
                return [matchIndex, index]
            }
            digitalDic[value] = index
        }
        
        return []
    }
    
}
