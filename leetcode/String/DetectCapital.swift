//
//  DetectCapital.swift
//  leetcode
//
//  Created by FFIB on 2017/7/4.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//DetectCapital
/*
 Given a word, you need to judge whether the usage of capitals in it is right or not.
 
 We define the usage of capitals in a word to be right when one of the following cases holds:
 
 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital if it has more than one letter, like "Google".
 Otherwise, we define that this word doesn't use capitals in a right way.
 Example 1:
 Input: "USA"
 Output: True
 Example 2:
 Input: "FlaG"
 Output: False
 Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.
 */
extension Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var arr = Array(word.unicodeScalars)
        if arr.count < 2 {
            return false
        }
        let isCapital = (arr.first?.value)! >= 65 && (arr.first?.value)! <= 90
        let isAllCapital = arr[1].value >= 65 && arr[1].value <= 90
        for i in 1..<arr.count {
            if isCapital {
                if isAllCapital {
                    guard arr[i].value >= 65 && arr[i].value <= 90 else {
                        return false
                    }
                }else {
                    guard arr[i].value >= 97 && arr[i].value <= 122 else{
                        return false
                    }
                }
            }else {
                guard arr[i].value >= 97 && arr[i].value <= 122 else{
                    return false
                }
            }
        }
        return true
    }
}
