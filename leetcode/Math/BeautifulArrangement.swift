//
//  BeautifulArrangement.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func countArrangement(_ N: Int) -> Int {
        var res = 0
        var nums = (0...N + 1).map { (i) -> Bool in
            return false
        }
        func solve(index: Int){
            if index <= 1 {
                res += 1
                return
            }
            for i in 1...N {
                if nums[i] == false && (i % index == 0 || index % i == 0) {
                    nums[i] = true
                    solve(index: index - 1)
                    nums[i] = false
                }
            }
        }
        solve(index: N)
        return res
    }
}
