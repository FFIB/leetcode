//
//  BrickWall.swift
//  leetcode
//
//  Created by FFIB on 2017/9/9.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func leastBricks(_ wall: [[Int]]) -> Int {
        var dict = [Int: Int]()
        var res = 0
        for h in wall {
            var count = 0
            for v in h {
                if count > 0 {
                    dict[count]! += 1
                    res = max(dict[count]!, res)
                }
                count += v
            }
        }
        return wall.count - res
    }
}
