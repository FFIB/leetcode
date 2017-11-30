//
//  ValidAnagram.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//242. Valid Anagram
/*
 Given two strings s and t, write a function to determine if t is an anagram of s.
 
 For example,
 s = "anagram", t = "nagaram", return true.
 s = "rat", t = "car", return false.
 
 Note:
 You may assume the string contains only lowercase alphabets.
 
 Follow up:
 What if the inputs contain unicode characters? How would you adapt your solution to such case?
 */
extension Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var dict = [Int: Int]()
        for i in s.unicodeScalars {
            if dict[Int(i.value)] == nil {
                dict[Int(i.value)] = 1
            }else {
                dict[Int(i.value)] = dict[Int(i.value)]! + 1
            }
            
        }
        for i in t.unicodeScalars {
            if dict[Int(i.value)] == nil {
                return false
            }else {
                dict[Int(i.value)] = dict[Int(i.value)]! - 1
            }
        }
        for i in dict.values {
            if i != 0 {
                return false
            }
        }
        return true
    }
}
