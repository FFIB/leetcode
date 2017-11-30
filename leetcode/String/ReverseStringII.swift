//
//  ReverseStringII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//541. Reverse String II
/*
 Given a string and an integer k, you need to reverse the first k characters for every 2k characters counting from the start of the string. If there are less than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and left the other as original.
 Example:
 Input: s = "abcdefg", k = 2
 Output: "bacdfeg"
 Restrictions:
 The string consists of lower English letters only.
 Length of the given string and k will in the range [1, 10000]
 */
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
