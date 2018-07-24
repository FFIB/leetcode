//
//  BuddyStrings.swift
//  leetcode
//
//  Created by FFIB on 2018/7/23.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//859. Buddy Strings
/*
 Given two strings A and B of lowercase letters, return true if and only if we can swap two letters in A so that the result equals B.

 Example 1:

 Input: A = "ab", B = "ba"
 Output: true
 Example 2:

 Input: A = "ab", B = "ab"
 Output: false
 Example 3:

 Input: A = "aa", B = "aa"
 Output: true
 Example 4:

 Input: A = "aaaaaaabc", B = "aaaaaaacb"
 Output: true
 Example 5:

 Input: A = "", B = "aa"
 Output: false


 Note:

 0 <= A.length <= 20000
 0 <= B.length <= 20000
 A and B consist only of lowercase letters.
 */
extension Solution {
    func buddyStrings(_ A: String, _ B: String) -> Bool {
        guard A.count == B.count else { return false }
        var diffA: Character = Character("")
        var diffB: Character = Character("")
        var isDiff = false
        var isEqual = false
        var isExistDiff = false
        var dict = [Character: Int]()
        for (a, b) in zip(A, B) {
            if a != b {
                if isDiff {
                    guard diffA == b && diffB == a && !isExistDiff else { return false }
                    isExistDiff = true
                } else {
                    diffA = a
                    diffB = b
                    isDiff = true
                }
            }
            if !isEqual {
                if dict[a] == nil {
                    dict[a] = 1
                } else {
                    isEqual = true
                }
            }
        }
        return isExistDiff || isEqual
    }
}
