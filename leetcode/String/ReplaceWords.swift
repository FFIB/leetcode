//
//  ReplaceWords.swift
//  leetcode
//
//  Created by FFIB on 2017/8/26.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func replaceWords(_ dict: [String], _ sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        var newSentence = ""
        let dictSet = Set(dict)
        for word in words {
            var newWords = ""
            var index = 0
            for char in word {
                newWords += String(char)
                index += 1
                if dictSet.contains(newWords) { break }
                if index > 100 {
                    newWords = word
                    break
                }
            }
            newSentence += " \(newWords)"
        }
        return newSentence.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
