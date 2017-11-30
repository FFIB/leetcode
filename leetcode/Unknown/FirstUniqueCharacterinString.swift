//
//  FirstUniqueCharacterinString.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//387. First Unique Character in a String
/*
 Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
 
 Examples:
 
 s = "leetcode"
 return 0.
 
 s = "loveleetcode",
 return 2.
 Note: You may assume the string contain only lowercase letters.
 */
extension Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Int : Int]()
        var index = 0
        for i in s.unicodeScalars {
            let element = Int(i.value)
            if dict[element] == nil {
                dict[element] = index
            }else {
                dict[element] = -1
            }
            index += 1
        }
        
        var result = -1
        var isFirst = true
        for key in dict.keys {
            let value = dict[key]!
            if value != -1 {
                if isFirst {
                    result = value
                    isFirst = false
                }
                if result > value {
                    result = value
                }
            }
        }
        
        return result
        
    }
}
