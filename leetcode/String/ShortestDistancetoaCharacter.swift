//
//  ShortestDistancetoaCharacter.swift
//  leetcode
//
//  Created by FFIB on 2018/4/28.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//821. Shortest Distance to a Character
/*
 Given a string S and a character C, return an array of integers representing the shortest distance from the character C in the string.

 Example 1:

 Input: S = "loveleetcode", C = 'e'
 Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]


 Note:

 S string length is in [1, 10000].
 C is a single character, and guaranteed to be in string S.
 All letters in S and C are lowercase.
 */
extension Solution {
    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        var ans = Array(repeating: S.count, count: S.count)
        var last = -(ans.count * 2 + 1)
        for (i, char) in S.enumerated() {
            if char == C { last = i }
            ans[i] = min(i - last, ans[i])
        }

        last = ans.count * 2 + 1
        for (i, char) in S.enumerated().reversed() {
            if char == C { last = i }
            ans[i] = min(last - i, ans[i])
        }
        return ans
    }
}
