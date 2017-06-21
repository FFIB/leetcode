//
//  LongestCommonPrefix.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        }
        var result = strs[0]
        for str in strs {
            while !str.hasPrefix(result) {
                if result.isEmpty || result.characters.count == 1{
                    return ""
                }
                result.remove(at: result.index(before: result.endIndex))
            }
        }
        return result
    }
}
