//
//  CompareVersionNumbers.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        let ver1 = version1.components(separatedBy: ".")
        let ver2 = version2.components(separatedBy: ".")
        for i in 0..<max(ver1.count, ver2.count) {
            let v1 = i < ver1.count ? Int(ver1[i]) ?? 0 : 0
            let v2 = i < ver2.count ? Int(ver2[i]) ?? 0 : 0
            if v1 > v2 {
                return 1
            }
            if v1 < v2 {
                return -1
            }
        }
        return 0
    }
}
