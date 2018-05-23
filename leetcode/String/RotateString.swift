//
//  RotateString.swift
//  leetcode
//
//  Created by FFIB on 2018/5/23.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//796. Rotate String
/*
 We are given two strings, A and B.

 A shift on A consists of taking string A and moving the leftmost character to the rightmost position. For example, if A = 'abcde', then it will be 'bcdea' after one shift on A. Return True if and only if A can become B after some number of shifts on A.

 Example 1:
 Input: A = 'abcde', B = 'cdeab'
 Output: true

 Example 2:
 Input: A = 'abcde', B = 'abced'
 Output: false
 Note:

 A and B will have length at most 100.
 */
extension Solution {
    func rotateString(_ A: String, _ B: String) -> Bool {
        return (A.count == B.count && (B + B).contains(A)) || (A.count == 0 && B.count == 0)
    }
}
