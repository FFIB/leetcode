//
//  LongestUncommonSubsequenceI.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        return a != b ? max(a.count, b.count) : -1
    }
}
