//
//  PositionsofLargeGroups.swift
//  leetcode
//
//  Created by FFIB on 2018/5/7.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//830. Positions of Large Groups
/*
 In a string S of lowercase letters, these letters form consecutive groups of the same character.

 For example, a string like S = "abbxxxxzyy" has the groups "a", "bb", "xxxx", "z" and "yy".

 Call a group large if it has 3 or more characters.  We would like the starting and ending positions of every large group.

 The final answer should be in lexicographic order.



 Example 1:

 Input: "abbxxxxzzy"
 Output: [[3,6]]
 Explanation: "xxxx" is the single large group with starting  3 and ending positions 6.
 Example 2:

 Input: "abc"
 Output: []
 Explanation: We have "a","b" and "c" but no large group.
 Example 3:

 Input: "abcdddeeeeaabbbcd"
 Output: [[3,5],[6,9],[12,14]]


 Note:  1 <= S.length <= 1000
 */
extension Solution {
    func largeGroupPositions(_ S: String) -> [[Int]] {
        var last = S.first!
        var count = 0
        var ans = [[Int]]()
        for (i, char) in (S+"#").enumerated() {
            if last == char {
                count += 1
            }else {
                if count >= 3 {
                    ans.append([i-count, i-1])
                }
                last = char
                count = 1
            }
        }
        return ans
    }
}
