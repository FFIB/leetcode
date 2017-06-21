//
//  RemoveElement.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        while i < nums.count {
            if nums[i] == val {
                nums.remove(at: i)
            }else {
                i += 1
            }
        }
        
        return nums.count
    }
}
