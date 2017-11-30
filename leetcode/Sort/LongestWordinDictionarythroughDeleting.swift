//
//  LongestWordinDictionarythroughDeleting.swift
//  leetcode
//
//  Created by FFIB on 2017/7/9.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//524. Longest Word in Dictionary through Deleting
/*
 Given a string and a string dictionary, find the longest string in the dictionary that can be formed by deleting some characters of the given string. If there are more than one possible results, return the longest word with the smallest lexicographical order. If there is no possible result, return the empty string.
 
 Example 1:
 Input:
 s = "abpcplea", d = ["ale","apple","monkey","plea"]
 
 Output:
 "apple"
 Example 2:
 Input:
 s = "abpcplea", d = ["a","b","c"]
 
 Output:
 "a"
 Note:
 All the strings in the input will only contain lower-case letters.
 The size of the dictionary won't exceed 1,000.
 The length of all the strings in the input won't exceed 1,000.
 */
extension Solution {
    func findLongestWord(_ s: String, _ d: [String]) -> String {
        let chars = Array(s)
        var res = ""
        for str in d {
            var strArr = Array(str)
            var i = 0
            for char in chars {
                if i < strArr.count && char == strArr[i]  {
                    i += 1
                }
            }
            if i == strArr.count && i >= res.count {
                if i > res.count || res.compare(str) == .orderedDescending {
                    res = str
                }
            }
        }
        return res
    }
}
