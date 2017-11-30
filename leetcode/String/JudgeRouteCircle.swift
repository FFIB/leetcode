//
//  JudgeRouteCircle.swift
//  leetcode
//
//  Created by FFIB on 2017/9/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//657. Judge Route Circle
/*
 Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.
 
 The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.
 
 Example 1:
 Input: "UD"
 Output: true
 Example 2:
 Input: "LL"
 Output: false
 */
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
