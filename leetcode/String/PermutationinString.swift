//
//  PermutationinString.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        if s1.count > s2.count {
            return false
        }
        var dict1 = [Character: Int]()
        var dict2 = [Character: Int]()
        let arr1 = Array(s1)
        let arr2 = Array(s2)
        var index = 0
        for str in arr1 {
            dict1[str] = (dict1[str] ?? 0) + 1
            dict2[arr2[index]] = (dict2[arr2[index]] ?? 0) + 1
            index += 1
        }
        
        if dict1 == dict2 {
            return true
        }
        
        for i in arr1.count..<arr2.count {
            if dict2[arr2[i - arr1.count]]! <= 1{
                dict2.removeValue(forKey: arr2[i - arr1.count])
            }else {
                dict2[arr2[i - arr1.count]] =  (dict2[arr2[i - arr1.count]] ?? 0) - 1
            }
            
            dict2[arr2[i]] =  (dict2[arr2[i]] ?? 0) + 1
            if dict2 == dict1 {
                return true
            }
        }
        return false
    }
}
