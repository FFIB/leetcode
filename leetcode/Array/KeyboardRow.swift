//
//  KeyboardRow.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//500. Keyboard Row
/*
 DescriptionHintsSubmissionsDiscussSolution
 Discuss Pick One
 Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
 
 
 American keyboard
 
 
 Example 1:
 Input: ["Hello", "Alaska", "Dad", "Peace"]
 Output: ["Alaska", "Dad"]
 Note:
 You may use one character in the keyboard more than once.
 You may assume the input string will only contain letters of alphabet.
 */
extension Solution {
    func findWords(_ words: [String]) -> [String] {
        let firstRow = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"]
        let secondRow = ["a", "s", "d", "f", "g", "h", "j", "k", "l"]
        let thirdRow = ["z", "x", "c", "v", "b", "n", "m"]
        var result = [String]()
        
        for word in words {
            var previousRow = 0
            var index = 0
            var isSameRow = true
            for element in word.lowercased() {
                
                if previousRow == 0 || previousRow == 1 {
                    if firstRow.contains(String(element)) {
                        previousRow = 1
                    }else {
                        if index != 0 {
                            isSameRow = false
                        }
                    }
                    
                }
                if previousRow == 0 || previousRow == 2 {
                    if secondRow.contains(String(element)) {
                        previousRow = 2
                    }else {
                        if index != 0 {
                            isSameRow = false
                        }
                    }
                    
                }
                if previousRow == 0 || previousRow == 3 {
                    if thirdRow.contains(String(element)) {
                        previousRow = 3
                    }else {
                        if index != 0 {
                            isSameRow = false
                        }
                    }
                    
                }
                index += 1
            }
            if isSameRow {
                result.append(word)
            }
        }
        return result
    }
}
