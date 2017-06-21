//
//  EliminationGame.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func lastRemaining(_ n: Int) -> Int {
        var num = n
        var res = 1
        var p = 1
        var cnt = 0
        while num > 1 {
            num /= 2
            cnt += 1
            p *= 2
            if cnt % 2 == 1 {
                res += (p / 2 + p * (num - 1))
            }else {
                res -= (p / 2 + p * (num - 1))
            }
        }
        return res
    }
}
