//
//  BulbSwitcherII.swift
//  leetcode
//
//  Created by FFIB on 2017/9/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func flipLights(_ n: Int, _ m: Int) -> Int {
        if m * n == 0 { return 1 }
        if n == 1 { return 2 }
        if n == 2 { return 4 - (m % 2) }
        if m == 1 { return 4 }
        if m == 2 { return 7 }
        return 8
    }
}
