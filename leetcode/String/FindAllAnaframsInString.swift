//
//  FindAllAnaframsInString.swift
//  leetcode
//
//  Created by LISA on 2017/7/19.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let windowSize = p.characters.count
        guard windowSize > 0 else {
            return [Int]()
        }
        
        var asciis = Array(repeating: 0, count: 26)
        
        for str in p.unicodeScalars {
            asciis[Int(str.value) - 97] += 1
        }
        
        var res = [Int]()
        let chars = Array(s.unicodeScalars)
        for (index, char) in chars.enumerated() {
            asciis[Int(char.value) - 97] -= 1
            let start = index - windowSize + 1
            guard start >= 0 else {
                continue
            }
            
            if asciis.filter({ $0 > 0 }).isEmpty {
                res.append(start)
            }
            asciis[Int(chars[start].value) - 97] += 1
        }
        
        return res
    }
}
