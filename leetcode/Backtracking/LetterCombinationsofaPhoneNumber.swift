//
//  LetterCombinationsofaPhoneNumber.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//17. Letter Combinations of a Phone Number
/*
 Given a digit string, return all possible letter combinations that the number could represent.
 
 A mapping of digit to letters (just like on the telephone buttons) is given below.
 
 
 
 Input:Digit string "23"
 Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
 Note:
 Although the above answer is in lexicographical order, your answer could be in any order you want.
 */
extension Solution {
    func letterCombinations(_ digits: String) -> [String] {
        let arr = ["0", "1", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
        var res = [String]()
        for digit in digits {
            let count = res.count == 0 ? 1 : res.count
            for _ in 0..<count {
                let head = res.isEmpty ? "" : res.removeFirst()
                for alpha in arr[Int(String(digit))!]{
                    res.append(head + String(alpha))
                }
            }
        }
        return res
    }
}
