//
//  RepeatedStringMatch.swift
//  leetcode
//
//  Created by FFIB on 23/03/2018.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//686. Repeated String Match
/*
 Given two strings A and B, find the minimum number of times A has to be repeated such that B is a substring of it. If no such solution, return -1.

 For example, with A = "abcd" and B = "cdabcdab".

 Return 3, because by repeating A three times (“abcdabcdabcd”), B is a substring of it; and B is not a substring of A repeated two times ("abcdabcd").

 Note:
 The length of A and B will be between 1 and 10000.
 */
extension Solution {
    func repeatedStringMatch(_ A: String, _ B: String) -> Int {
        var target = Array(repeating: 0, count: B.count + 1)
        var i = 1
        var j = 0
        var arrA = Array(A)
        var arrB = Array(B)
        while i < arrB.count {
            j = arrB[i] == arrB[j] ? j + 1 : target[j]
            i += 1
            target[i] = j
        }
        i = 0
        j = 0
        while i < arrA.count {
            while j < arrB.count && arrA[(i + j) % arrA.count] == arrB[j] {
                j += 1
            }
            if j == arrB.count { return ((i + j) / arrA.count) + (((i + j) % arrA.count) != 0 ? 1 : 0) }
            i += max(1, j - target[j])
            j = target[j]
        }
        return -1
    }
}
