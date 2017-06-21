//
//  ContainsDuplicate.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
