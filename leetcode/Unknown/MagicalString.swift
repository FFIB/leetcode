//
//  MagicalString.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//481. Magical String
/*
 A magical string S consists of only '1' and '2' and obeys the following rules:
 
 The string S is magical because concatenating the number of contiguous occurrences of characters '1' and '2' generates the string S itself.
 
 The first few elements of string S is the following: S = "1221121221221121122……"
 
 If we group the consecutive '1's and '2's in S, it will be:
 
 1 22 11 2 1 22 1 22 11 2 11 22 ......
 
 and the occurrences of '1's or '2's in each group are:
 
 1 2    2 1 1 2 1 2 2 1 2 2 ......
 
 You can see that the occurrence sequence above is the S itself.
 
 Given an integer N as input, return the number of '1's in the first N number in the magical string S.
 
 Note: N will not exceed 100,000.
 
 Example 1:
 Input: 6
 Output: 3
 Explanation: The first 6 elements of magical string S is "12211" and it contains three 1's, so return 3.
 */
extension Solution  {
    func magicalString(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        var magical = ["1", "2", "2"]
        var p = 2
        while magical.count < n {
            let add = magical.last! == "1" ? "2" : "1"
            if magical[p] == "1" {
                magical.append(add)
            }else {
                magical.append(add)
                magical.append(add)
            }
            p += 1
        }
        if magical.count > n {
            magical.removeLast()
        }
        return magical.reduce(0, { (res, str) -> Int in
            return str == "1" ? res + 1 : res
        })
    }
}
