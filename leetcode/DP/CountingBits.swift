//
//  CountingBits.swift
//  leetcode
//
//  Created by FFIB on 2017/11/1.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func countBits(_ num: Int) -> [Int] {
        var ans = [0]
        for n in 1...num {
            ans.append(ans[n >> 1] + (n & 1))
        }
        return ans
    }
}
