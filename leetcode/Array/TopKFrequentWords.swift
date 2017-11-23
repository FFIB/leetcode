//
//  TopKFrequentWords.swift
//  leetcode
//
//  Created by FFIB on 2017/10/12.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var dict = [String: Int]()
        for word in words { dict[word] = (dict[word] ?? 0) + 1 }
       let arr = dict.sorted { (arg0, arg1) -> Bool in
            let (key1, count1) = arg0
            let (key2, count2) = arg1
            if count1 == count2 {
                let count = min(key1.count, key2.count)
                var i = 0
                let chars1 = Array(key1.unicodeScalars)
                let chars2 = Array(key2.unicodeScalars)
                while i < count {
                    if chars1[i].value != chars2[i].value {
                        return chars1[i].value < chars2[i].value
                    }
                    i += 1
                }
                return true
            }else {
                return count1 > count2
            }
        }
        return arr[0..<min(arr.count, k)].map({ (arg0) -> String in
            return arg0.key
        })
    }
}
