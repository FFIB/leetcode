//
//  JudgeRouteCircle.swift
//  leetcode
//
//  Created by FFIB on 2017/9/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var h = 0
        var v = 0
        let L: Character = "L"
        let U: Character = "U"
        let D: Character = "D"
        for move in moves {
            if move == L {
                v -= 1
            }else if move == U {
                h += 1
            }else if move == D {
                h -= 1
            }else {
                v += 1
            }
        }
        return h == 0 && v == 0
    }
}
