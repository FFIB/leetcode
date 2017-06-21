//
//  ClimbingStairs.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func climbStairs(_ n: Int) -> Int {
        var f1 = 1
        var f2 = 2
        if n == 1 {
            return f1
        }else if n == 2 {
            return f2
        }
        var result = 0
        for _ in 3...n {
            result = f1 + f2
            f1 = f2
            f2 = result
        }
        return result
    }
}
