//
//  CountAndSay.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//38. Count and Say
/*
 The count-and-say sequence is the sequence of integers with the first five terms as following:
 
 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 1 is read off as "one 1" or 11.
 11 is read off as "two 1s" or 21.
 21 is read off as "one 2, then one 1" or 1211.
 Given an integer n, generate the nth term of the count-and-say sequence.
 
 Note: Each term of the sequence of integers will be represented as a string.
 
 Example 1:
 
 Input: 1
 Output: "1"
 Example 2:
 
 Input: 4
 Output: "1211"
 */
extension Solution {
    func countAndSay(_ n: Int) -> String {
        var num = n
        var result = "1"
        if n == 1 {
            return result
        }else {
            while num > 1 {
                var last = result[result.startIndex]
                var count = 0
                var temp = ""
                for i in result {
                    if last == i {
                        count += 1
                    }else {
                        temp.append("\(count)" + "\(last)")
                        last = i
                        count = 1
                    }
                }
                temp.append("\(count)" + "\(last)")
                result = temp
                num -= 1
            }
        }
        
        return result
    }
}
