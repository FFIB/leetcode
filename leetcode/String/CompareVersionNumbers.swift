//
//  CompareVersionNumbers.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//165. Compare Version Numbers
/*
 Compare two version numbers version1 and version2.
 If version1 > version2 return 1, if version1 < version2 return -1, otherwise return 0.
 
 You may assume that the version strings are non-empty and contain only digits and the . character.
 The . character does not represent a decimal point and is used to separate number sequences.
 For instance, 2.5 is not "two and a half" or "half way to version three", it is the fifth second-level revision of the second first-level revision.
 
 Here is an example of version numbers ordering:
 
 0.1 < 1.1 < 1.2 < 13.37
 Credits:
 Special thanks to @ts for adding this problem and creating all test cases.
 */
extension Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        let ver1 = version1.components(separatedBy: ".")
        let ver2 = version2.components(separatedBy: ".")
        for i in 0..<max(ver1.count, ver2.count) {
            let v1 = i < ver1.count ? Int(ver1[i]) ?? 0 : 0
            let v2 = i < ver2.count ? Int(ver2[i]) ?? 0 : 0
            if v1 > v2 {
                return 1
            }
            if v1 < v2 {
                return -1
            }
        }
        return 0
    }
}
