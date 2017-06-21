//
//  ArrangingCoins.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var num = 1
        var index = 2
        if n == 0 {
            return 0
        }
        while num <= n - index {
            num = num + index
            index += 1
        }
        return index - 1
    }
}
