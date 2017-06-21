//
//  HammingDistance.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var result = x^y
        var count = 0
        while result > 0 {
            if result % 2 == 1 {
                count += 1
            }
            result /= 2
        }
        return count
    }
}
