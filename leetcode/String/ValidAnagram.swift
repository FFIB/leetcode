//
//  ValidAnagram.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.characters.count != t.characters.count {
            return false
        }
        var dict = [Int: Int]()
        for i in s.unicodeScalars {
            if dict[Int(i.value)] == nil {
                dict[Int(i.value)] = 1
            }else {
                dict[Int(i.value)] = dict[Int(i.value)]! + 1
            }
            
        }
        for i in t.unicodeScalars {
            if dict[Int(i.value)] == nil {
                return false
            }else {
                dict[Int(i.value)] = dict[Int(i.value)]! - 1
            }
        }
        for i in dict.values {
            if i != 0 {
                return false
            }
        }
        return true
    }
}
