//
//  BaseSeven.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//504. Base 7
/*
 Given an integer, return its base 7 string representation.
 
 Example 1:
 Input: 100
 Output: "202"
 Example 2:
 Input: -7
 Output: "-10"
 Note: The input will be in range of [-1e7, 1e7].
 */
extension Solution {
    func convertToBase7(_ num: Int) -> String {
        if num == 0 {
            return "0"
        }
        var result = ""
        var n = abs(num)
        
        while n > 0 {
            let remainder = n % 7
            result = "\(remainder)" + result
            n /= 7
        }
        return num < 0 ? "-" + result : result
    }
}
