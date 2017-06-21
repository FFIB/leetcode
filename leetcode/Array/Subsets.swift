//
//  Subsets.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = [[ ]];
        for i in nums {
            let count = res.count
            for j in 0..<count{
                res.append(res[j] + [i])
            }
        }
        return res
    }
}
