//
//  LongestRepeatingCharacterReplacement.swift
//  leetcode
//
//  Created by FFIB on 2018/5/4.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//424. Longest Repeating Character Replacement
/*
 Given a string that consists of only uppercase English letters, you can replace any letter in the string with another letter at most k times. Find the length of a longest substring containing all repeating letters you can get after performing the above operations.

 Note:
 Both the string's length and k will not exceed 104.

 Example 1:

 Input:
 s = "ABAB", k = 2

 Output:
 4

 Explanation:
 Replace the two 'A's with two 'B's or vice versa.
 Example 2:

 Input:
 s = "AABABBA", k = 1

 Output:
 4

 Explanation:
 Replace the one 'A' in the middle with 'B' and form "AABBBBA".
 The substring "BBBB" has the longest repeating letters, which is 4.
 */
extension Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var dict = [Character: Int]()
        var ans = 0
        var p1 = 0, p2 = 0
        var chars = Array(s)
        while p2 < chars.count {
            dict[chars[p2]] = (dict[chars[p2]] ?? 0) + 1
            p2 += 1
            while p2 - p1 - dict.values.max()! > k {
                dict[chars[p1]] = (dict[chars[p1]] ?? 0) - 1
                p1 += 1
            }
            ans = max(ans, p2 - p1)
        }
        return ans
    }
}
