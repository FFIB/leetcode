//
//  SearchinRotatedSortedArrayII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        for num in nums {
            if num == target {
                return true
            }
        }
        return false
    }
}
