//
//  GroupAnagrams.swift
//  leetcode
//
//  Created by FFIB on 2017/6/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//49. Group Anagrams
/*
 Given an array of strings, group anagrams together.
 
 For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Return:
 
 [
 ["ate", "eat","tea"],
 ["nat","tan"],
 ["bat"]
 ]
 Note: All inputs will be in lower-case.
 */
extension Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: Int]()
        var res = [[String]]()
        var sort = [String]()
        var index = 0
        for str in strs {
           sort.append(String(str.sorted()))
        }
        
        for i in 0..<sort.count {
            let str = sort[i]
            if dict[str] == nil {
                dict[str] = index
                res.append([strs[i]])
                index += 1
            }else {
                res[dict[str]!] = res[dict[str]!] + [strs[i]]
            }
        }
        return res
    }
}
