//
//  RotateArray.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var index = 0
        while index < k {
            let last = nums.removeLast()
            nums.insert(last, at: 0)
            index += 1
        }
    }
}
