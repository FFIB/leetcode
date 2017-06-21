//
//  FirstUniqueCharacterinString.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
