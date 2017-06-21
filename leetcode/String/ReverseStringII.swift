//
//  ReverseStringII.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        
        if k == 0{
            return s
        }else if k > s.characters.count {
            return String(s.characters.reversed())
        }
        var index = 1
        var temp = ""
        var result = ""
        for char in s.characters {
            temp += String(char)
            if index == k {
                result += String(temp.characters.reversed())
                temp = ""
            }else if index == 2 * k {
                index = 0
                result += temp
                temp = ""
            }
            index += 1
        }
        if index < k {
            result += String(temp.characters.reversed())
        }else {
            result += temp
        }
        
        return result
    }
}
