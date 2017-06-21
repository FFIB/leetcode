//
//  LongestPalindrome.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func longestPalindrome(_ s: String) -> Int {
        var dict = [String: Int]()
        var result = 0
        for element in s.characters {
            let str = String(element)
            if dict[str] != nil {
                result += 2
                dict.removeValue(forKey: str)
            }else {
                dict[str] = 1
            }
        }
        return dict.count > 0 ? result + 1 : result
        
    }
}
