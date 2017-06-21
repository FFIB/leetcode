//
//  RansomNote.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
