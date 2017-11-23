//
//  IsSubsequence.swift
//  leetcode
//
//  Created by FFIB on 2017/11/8.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count <= t.count else {
            return false
        }
        var sArr = Array(s)
        let tArr = Array(t)
        for char in tArr {
            if sArr.isEmpty {
                return true
            }
            if sArr[0] == char {
                sArr.removeFirst()
            }
        }
        return sArr.count == 0
    }
}
