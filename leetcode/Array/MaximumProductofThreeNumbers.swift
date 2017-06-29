//
//  MaximumProductofThreeNumbers.swift
//  leetcode
//
//  Created by LISA on 2017/6/28.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return 0
        }
        let sort = nums.sorted()
        if sort.count >= 3 {
            var res = sort[sort.count - 1] * sort[sort.count - 2] *  sort[sort.count - 3]
            res = max(res, sort[0] * sort[1] * sort[sort.count - 1])
            return res
        }else{
            return 0
        }
    }
}
