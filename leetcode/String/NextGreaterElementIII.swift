//
//  NextGreaterElementIII.swift
//  leetcode
//
//  Created by FFIB on 2018/1/15.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//556. Next Greater Element III
/*
 Given a positive 32-bit integer n, you need to find the smallest 32-bit integer which has exactly the same digits existing in the integer n and is greater in value than n. If no such positive 32-bit integer exists, you need to return -1.
 
 Example 1:
 Input: 12
 Output: 21
 Example 2:
 Input: 21
 Output: -1
 */
extension Solution {
    func nextGreaterElement(_ n: Int) -> Int {
        var index = 0
        var s = Array("\(n)")
        
        for i in (1..<s.count).reversed() {
            if s[i - 1] < s[i] {
                index = i
                break
            }
        }
        
        if index > 0 {
            for i in (0..<s.count).reversed() {
                if s[i] > s[index - 1] {
                    s.swapAt(index - 1, i)
                    break
                }
            }
        }
        
        for i in 0..<(s.count - index) / 2 {
            s.swapAt(index + i, s.count - i - 1)
        }
        return Int(String(s))!
    }
}
