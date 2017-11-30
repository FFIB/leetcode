//
//  ImplementstrStr.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//28. Implement strStr()
/*
 Implement strStr().
 
 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
 Example 1:
 
 Input: haystack = "hello", needle = "ll"
 Output: 2
 Example 2:
 
 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 */
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
