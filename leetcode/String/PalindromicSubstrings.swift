//
//  PalindromicSubstrings.swift
//  leetcode
//
//  Created by FFIB on 2017/8/9.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func countSubstrings(_ s: String) -> Int {
        let arr = Array(s.characters)
        var res = 0
        func assist(i: Int, j: Int, count: inout Int) {
            var i = i
            var j = j
            while i >= 0 && j < arr.count {
                if arr[i] == arr[j] {
                    count += 1
                    i -= 1
                    j += 1
                }else {
                    break
                }
            }
        }
        
        for i in 0..<arr.count {
            assist(i: i, j: i, count: &res)
            assist(i: i, j: i + 1, count: &res)
        }
        return res
    }
}
