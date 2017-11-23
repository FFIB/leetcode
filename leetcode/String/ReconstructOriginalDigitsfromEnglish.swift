//
//  ReconstructOriginalDigitsfromEnglish.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func originalDigits(_ s: String) -> String {
        var count = Array(repeating: 0, count: 10)
        for s in s {
            if s == "z" {count[0] += 1} //0
            if s == "w" {count[2] += 1} //2
            if s == "x" {count[6] += 1} //6
            if s == "s" {count[7] += 1} //7 6
            if s == "g" {count[8] += 1} //8
            if s == "u" {count[4] += 1} //4
            if s == "f" {count[5] += 1} //5 4
            if s == "h" {count[3] += 1} //3 8
            if s == "i" {count[9] += 1} //5 8 9 6
            if s == "o" {count[1] += 1} //0 1 2 4
        }
        count[7] -= count[6]
        count[5] -= count[4]
        count[3] -= count[8]
        count[1] = count[1] - count[0] - count[2] - count[4]
        count[9] = count[9] - count[5] - count[8] - count[6]
        print(count)
        var res = ""
        for i in 0..<count.count {
            for _ in 0..<count[i] {
                res += "\(i)"
            }
        }
        return res
    }
}
