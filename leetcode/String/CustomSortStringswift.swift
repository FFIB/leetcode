//
//  CustomSortStringswift.swift
//  leetcode
//
//  Created by FFIB on 2018/4/20.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//791. Custom Sort String
/*
 S and T are strings composed of lowercase letters. In S, no letter occurs more than once.

 S was sorted in some custom order previously. We want to permute the characters of T so that they match the order that S was sorted. More specifically, if x occurs before y in S, then x should occur before y in the returned string.

 Return any permutation of T (as a string) that satisfies this property.

 Example :
 Input:
 S = "cba"
 T = "abcd"
 Output: "cbad"
 Explanation:
 "a", "b", "c" appear in S, so the order of "a", "b", "c" should be "c", "b", and "a".
 Since "d" does not appear in S, it can be at any position in T. "dcba", "cdba", "cbda" are also valid outputs.


 Note:

 S has length at most 26, and no character is repeated in S.
 T has length at most 200.
 S and T consist of lowercase letters only.
 */

extension Solution {
    func customSortString(_ S: String, _ T: String) -> String {

        var sArr = Array(S)
        var tArr = Array(T)

        var index = 0

        for i in 0..<sArr.count {
            for j in index..<tArr.count {
                if tArr[j] == sArr[i] {
                    tArr[j] = tArr[index]
                    tArr[index] = sArr[i]
                    index += 1
                }
            }
        }

        return String(tArr)
    }
}
