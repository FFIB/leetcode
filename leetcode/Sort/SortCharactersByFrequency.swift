//
//  SortCharactersByFrequency.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func frequencySort(_ s: String) -> String {
        var dict = [Character : Int]()
        s.characters.forEach { (char) in
            if dict[char] == nil {
                dict[char] = 1
            }else {
                dict[char] = dict[char]! + 1
            }
        }
        let sortDict = dict.sorted(by: { (dict1 :(key1: Character, value1: Int), dict2: (key2: Character, value2: Int)) -> Bool in
            return dict1.value1 > dict2.value2
        })
        var result = [Character]()
        for dict in sortDict {
            for _ in 0..<dict.value {
                result.append(dict.key)
            }
            
        }
        return String(result)
    }
}
