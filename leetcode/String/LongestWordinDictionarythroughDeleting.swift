//
//  LongestWordinDictionarythroughDeleting.swift
//  leetcode
//
//  Created by LISA on 2017/7/9.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findLongestWord(_ s: String, _ d: [String]) -> String {
        let chars = Array(s.characters)
        var res = ""
        for str in d {
            var strArr = Array(str.characters)
            var i = 0
            for char in chars {
                if i < strArr.count && char == strArr[i]  {
                    i += 1
                }
            }
            if i == strArr.count && i >= res.characters.count {
                if i > res.characters.count || res.compare(str) == .orderedDescending {
                    res = str
                }
            }
        }
        
        return res
    }
}
