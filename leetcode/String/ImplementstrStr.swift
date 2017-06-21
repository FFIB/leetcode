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
        for i in 0..<haystack.characters.count{
            if i + needle.characters.count > haystack.characters.count {
                return -1
            }
            let index = haystack.index(haystack.startIndex, offsetBy: i)
            if haystack[index] == needle.characters.first && haystack[index..<haystack.index(index, offsetBy: needle.characters.count)] == needle {
                return i
            }
        }
        return -1
    }
}
