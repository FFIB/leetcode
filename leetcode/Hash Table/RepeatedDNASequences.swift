//
//  RepeatedDNASequences.swift
//  leetcode
//
//  Created by FFIB on 2018/3/2.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//187. Repeated DNA Sequences
/*
 All DNA is composed of a series of nucleotides abbreviated as A, C, G, and T, for example: "ACGAATTCCG". When studying DNA, it is sometimes useful to identify repeated sequences within the DNA.

 Write a function to find all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule.

 For example,

 Given s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT",

 Return:
 ["AAAAACCCCC", "CCCCCAAAAA"].
 */
extension Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        var dict: [Character: Int] = ["A": 0, "C": 1, "G": 2, "T": 3]
        var valCount = [Int: Int]()
        var sum = 0
        var chars = Array(s)
        var ans = [String]()
        for (i, char) in chars.enumerated() {
            sum = (sum * 4 + dict[char]!) & 0xFFFFF
            
            guard i >= 9 else { continue }

            valCount[sum] = (valCount[sum] ?? 0) + 1

            if valCount[sum] == 2 {
                ans.append(String(chars[i - 9...i]))
            }
        }
        return ans
    }
}
