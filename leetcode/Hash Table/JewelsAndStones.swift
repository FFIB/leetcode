//
//  JewelsAndStones.swift
//  leetcode
//
//  Created by FFIB on 2018/3/1.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//771. Jewels and Stones
/*
 You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.

 The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".

 Example 1:

 Input: J = "aA", S = "aAAbbbb"
 Output: 3
 Example 2:

 Input: J = "z", S = "ZZ"
 Output: 0
 Note:

 S and J will consist of letters and have length at most 50.
 The characters in J are distinct.
 */
extension Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var dict = [Character: Int]()
        for char in J {
            dict[char] = 1
        }

        var ans = 0
        for char in S {
            if dict[char] != nil {
                ans += 1
            }
        }

        return ans
    }
}
