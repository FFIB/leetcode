//
//  ReverseWordsinStringIII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//557. Reverse Words in a String III
/*
 Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
 Example 1:
 Input: "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 Note: In the string, each word is separated by single space and there will not be any extra space in the string.
 */
extension Solution {
    func reverseWords(_ s: String) -> String {
        let sArr = s.components(separatedBy: .whitespaces)
        var res = sArr.reduce("") { (res, str) -> String in
            return res + String(str.reversed()) + " "
        }
        res.removeLast()
        return res
    }
}
