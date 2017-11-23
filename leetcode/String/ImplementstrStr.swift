//
//  ImplementstrStr.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        for i in 0..<haystack.count{
            if i + needle.count > haystack.count {
                return -1
            }
            let index = haystack.index(haystack.startIndex, offsetBy: i)
            if haystack[index] == needle.first && haystack[index..<haystack.index(index, offsetBy: needle.count)] == needle {
                return i
            }
        }
        return -1
    }
}
