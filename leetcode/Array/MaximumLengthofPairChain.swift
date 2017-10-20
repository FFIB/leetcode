//
//  MaximumLengthofPairChain.swift
//  leetcode
//
//  Created by FFIB on 2017/10/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findLongestChain(_ pairs: [[Int]]) -> Int {
        let chains = pairs.sorted{$0[1] > $1[1]}
        var last = [Int.min, Int.min]
        var ans = 0
        for chain in chains {
            if chain[0] > last[1] {
                ans += 1
                last = chain
            }
        }
        return ans
    }
}
