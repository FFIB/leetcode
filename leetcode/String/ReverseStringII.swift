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
        }else if k > s.count {
            return String(s.reversed())
        }
        var index = 1
        var temp = ""
        var result = ""
        for char in s {
            temp += String(char)
            if index == k {
                result += String(temp.reversed())
                temp = ""
            }else if index == 2 * k {
                index = 0
                result += temp
                temp = ""
            }
            index += 1
        }
        if index < k {
            result += String(temp.reversed())
        }else {
            result += temp
        }
        
        return result
    }
}
