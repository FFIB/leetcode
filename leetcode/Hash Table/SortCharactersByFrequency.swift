//
//  SortCharactersByFrequency.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//451. Sort Characters By Frequency
/*
 Given a string, sort it in decreasing order based on the frequency of characters.
 
 Example 1:
 
 Input:
 "tree"
 
 Output:
 "eert"
 
 Explanation:
 'e' appears twice while 'r' and 't' both appear once.
 So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.
 Example 2:
 
 Input:
 "cccaaa"
 
 Output:
 "cccaaa"
 
 Explanation:
 Both 'c' and 'a' appear three times, so "aaaccc" is also a valid answer.
 Note that "cacaca" is incorrect, as the same characters must be together.
 Example 3:
 
 Input:
 "Aabb"
 
 Output:
 "bbAa"
 
 Explanation:
 "bbaA" is also a valid answer, but "Aabb" is incorrect.
 Note that 'A' and 'a' are treated as two different characters.
 */
extension Solution {
    func frequencySort(_ s: String) -> String {
        var dict = [Character : Int]()
        s.forEach { (char) in
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
