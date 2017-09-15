//
//  Combinations.swift
//  leetcode
//
//  Created by FFIB on 2017/9/15.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        guard k > 0 && k <= n else {
            return []
        }
        
        func backtracking(start: Int, limit: Int) -> [[Int]] {
            var ans = [[Int]]()
            if limit == 1 {
                return (start...n).map{[$0]}
            }
            
            for i in start...n - limit + 1 {
                let res = backtracking(start: i + 1, limit: limit - 1)
                for list in res {
                    ans.append([i] + list)
                }
            }
            return ans
        }
        return backtracking(start: 1, limit: k)
    }
}
