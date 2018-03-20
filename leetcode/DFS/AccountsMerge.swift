//
//  AccountsMerge.swift
//  leetcode
//
//  Created by FFIB on 20/03/2018.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//744. Find Smallest Letter Greater Than Target
/*
 Given a list of sorted characters letters containing only lowercase letters, and given a target letter target, find the smallest element in the list that is larger than the given target.

 Letters also wrap around. For example, if the target is target = 'z' and letters = ['a', 'b'], the answer is 'a'.

 Examples:
 Input:
 letters = ["c", "f", "j"]
 target = "a"
 Output: "c"

 Input:
 letters = ["c", "f", "j"]
 target = "c"
 Output: "f"

 Input:
 letters = ["c", "f", "j"]
 target = "d"
 Output: "f"

 Input:
 letters = ["c", "f", "j"]
 target = "g"
 Output: "j"

 Input:
 letters = ["c", "f", "j"]
 target = "j"
 Output: "c"

 Input:
 letters = ["c", "f", "j"]
 target = "k"
 Output: "c"
 Note:
 letters has a length in range [2, 10000].
 letters consists of lowercase letters, and contains at least 2 unique letters.
 target is a lowercase letter.
 */
extension Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var l = 0, r = letters.count - 1
        while l < r - 1 {
            let m = l + (r - l) / 2
            if letters[m] <= target {
                l = m + 1
            }else {
                r = m
            }
        }
        if letters[l] > target { return letters[l] }
        if letters[r] > target { return letters[r] }
        return letters[0]
    }
}
