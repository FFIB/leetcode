//
//  RansomNote.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//383. Ransom Note
/*
 Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.
 
 Each letter in the magazine string can only be used once in your ransom note.
 
 Note:
 You may assume that both strings contain only lowercase letters.
 
 canConstruct("a", "b") -> false
 canConstruct("aa", "ab") -> false
 canConstruct("aa", "aab") -> true
 */
extension Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        if magazine.contains(ransomNote) {
            return true
        }
        var ransomChars = [Int: Int]()
        var magazineChars = [Int: Int]()
        for i in ransomNote.unicodeScalars {
            if ransomChars[Int(i.value)] == nil {
                ransomChars[Int(i.value)] = 1
            }else{
                ransomChars[Int(i.value)] = ransomChars[Int(i.value)]! + 1
            }
        }
        for i in magazine.unicodeScalars {
            if magazineChars[Int(i.value)] == nil {
                magazineChars[Int(i.value)] = 1
            }else{
                magazineChars[Int(i.value)] = magazineChars[Int(i.value)]! + 1
            }
        }
        
        for i in ransomChars.keys {
            if magazineChars[i] == nil {
                return false
            }
            if ransomChars[i]! > magazineChars[i]! {
                return false
            }
        }
        
        return true
        
    }
}
