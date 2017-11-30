//
//  WordPattern.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//290. Word Pattern
/*
 Given a pattern and a string str, find if str follows the same pattern.
 
 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.
 
 Examples:
 pattern = "abba", str = "dog cat cat dog" should return true.
 pattern = "abba", str = "dog cat cat fish" should return false.
 pattern = "aaaa", str = "dog cat cat dog" should return false.
 pattern = "abba", str = "dog dog dog dog" should return false.
 Notes:
 You may assume pattern contains only lowercase letters, and str contains lowercase letters separated by a single space.
 
 Credits:
 Special thanks to @minglotus6 for adding this problem and creating all test cases.
 */
extension Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        var first = ""
        var second = ""
        var dict = [String : Int]()
        var index = 0
        for i in pattern {
            if dict[String(i)] == nil {
                dict[String(i)] = index
                first += "\(index)"
                index += 1
            }else {
                first += "\(dict[String(i)]!)"
            }
        }
        dict = [String : Int]()
        index = 0
        var separatedStr = ""
        for i in str {
            if String(i) != " "{
                separatedStr += String(i)
            }else {
                if dict[separatedStr] == nil {
                    dict[separatedStr] = index
                    second += "\(index)"
                    index += 1
                }else {
                    second += "\(dict[separatedStr]!)"
                }
                separatedStr = ""
            }
        }
        if dict[separatedStr] == nil {
            dict[separatedStr] = index
            second += "\(index)"
            index += 1
        }else {
            second += "\(dict[separatedStr]!)"
        }
        separatedStr = ""
        return first == second
    }
}
