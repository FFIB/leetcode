//
//  CountBinarySubstrings.swift
//  leetcode
//
//  Created by FFIB on 2017/10/16.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//696. Count Binary Substrings
/*
 Give a string s, count the number of non-empty (contiguous) substrings that have the same number of 0's and 1's, and all the 0's and all the 1's in these substrings are grouped consecutively.
 
 Substrings that occur multiple times are counted the number of times they occur.
 
 Example 1:
 Input: "00110011"
 Output: 6
 Explanation: There are 6 substrings that have equal number of consecutive 1's and 0's: "0011", "01", "1100", "10", "0011", and "01".
 
 Notice that some of these substrings repeat and are counted the number of times they occur.
 
 Also, "00110011" is not a valid substring because all the 0's (and 1's) are not grouped together.
 Example 2:
 Input: "10101"
 Output: 4
 Explanation: There are 4 substrings: "10", "01", "10", "01" that have equal number of consecutive 1's and 0's.
 Note:
 
 s.length will be between 1 and 50,000.
 s will only consist of "0" or "1" characters.
 */
extension Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        let chars = Array(s)
        var count = [0, 0]
        var ans = 0
        var last = -1
        for char in chars {
            let c = Int(String(char))!
            if c != last { count[c] = 0 }
            count[c] += 1
            if count[c] <= count[1 - c] { ans += 1 }
            last = c
        }
        return ans
    }
}
