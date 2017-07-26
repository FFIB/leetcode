//
//  H_Index.swift
//  leetcode
//
//  Created by LISA on 2017/7/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func hIndex(_ citations: [Int]) -> Int {
        let arr = citations.sorted{$0 < $1}
        for (i, citation) in arr.enumerated() {
            if i >= citation {
                return i
            }
        }
        return arr.count
    }
}
