//
//  BackspaceStringCompare.swift
//  leetcode
//
//  Created by FFIB on 2018/6/13.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//844. Backspace String Compare
/*
 Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.

 Example 1:

 Input: S = "ab#c", T = "ad#c"
 Output: true
 Explanation: Both S and T become "ac".
 Example 2:

 Input: S = "ab##", T = "c#d#"
 Output: true
 Explanation: Both S and T become "".
 Example 3:

 Input: S = "a##c", T = "#a#c"
 Output: true
 Explanation: Both S and T become "c".
 Example 4:

 Input: S = "a#c", T = "b"
 Output: false
 Explanation: S becomes "c" while T becomes "b".
 Note:

 1 <= S.length <= 200
 1 <= T.length <= 200
 S and T only contain lowercase letters and '#' characters.
 Follow up:

 Can you solve it in O(N) time and O(1) space?
 */
extension Solution {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        var sArr = Array(S)
        var tArr = Array(T)

        func _backspace(s: String) -> [Character] {
            let chars = Array(s)
            var stack = [Character]()

            for char in chars {
                if char == "#" {
                    guard !stack.isEmpty else { continue }
                    stack.removeLast()
                } else {
                    stack.append(char)
                }
            }
            return stack
        }

        return _backspace(s: S) == _backspace(s: T)
    }
}
