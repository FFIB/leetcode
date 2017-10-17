//
//  fourSumII.swift
//  leetcode
//
//  Created by FFIB on 2017/10/17.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func fourSumCount(_ A: [Int], _ B: [Int], _ C: [Int], _ D: [Int]) -> Int {
        var dict = [Int: Int]()
        var ans = 0
        for a in A {
            for b in B {
                dict[a + b] = (dict[a + b] ?? 0) + 1
            }
        }
        for c in C {
            for d in D {
                if dict[-(c + d)] != nil {
                    ans += 1
                }
            }
        }
        return ans
    }
}
