//
//  ShortestCompletingWord.swift
//  leetcode
//
//  Created by FFIB on 2018/1/9.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//748. Shortest Completing Word
/*
 Find the minimum length word from a given dictionary words, which has all the letters from the string licensePlate. Such a word is said to complete the given string licensePlate
 
 Here, for letters we ignore case. For example, "P" on the licensePlate still matches "p" on the word.
 
 It is guaranteed an answer exists. If there are multiple answers, return the one that occurs first in the array.
 
 The license plate might have the same letter occurring multiple times. For example, given a licensePlate of "PP", the word "pair" does not complete the licensePlate, but the word "supper" does.
 
 Example 1:
 Input: licensePlate = "1s3 PSt", words = ["step", "steps", "stripe", "stepple"]
 Output: "steps"
 Explanation: The smallest length word that contains the letters "S", "P", "S", and "T".
 Note that the answer is not "step", because the letter "s" must occur in the word twice.
 Also note that we ignored case for the purposes of comparing whether a letter exists in the word.
 Example 2:
 Input: licensePlate = "1s3 456", words = ["looks", "pest", "stew", "show"]
 Output: "pest"
 Explanation: There are 3 smallest length words that contains the letters "s".
 We return the one that occurred first.
 Note:
 licensePlate will be a string with length in range [1, 7].
 licensePlate will contain digits, spaces, or letters (uppercase or lowercase).
 words will have a length in the range [10, 1000].
 Every words[i] will consist of lowercase letters, and have length in range [1, 15].
 */
extension Solution {
    func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
        var dict = [Character: Int]()
        var ans = ""
        let express = try! NSRegularExpression(pattern: "[a-z]", options: .caseInsensitive)
        for n in licensePlate.lowercased() {
            let s = String(n)
            if express.matches(in: s, options: NSRegularExpression.MatchingOptions.reportProgress, range: NSRange(location: 0, length: 1)).count >= 1{
                dict[n] = (dict[n] ?? 0) + 1
            }
        }
        for word in words {
            var tmp = dict
            for char in word {
                if let count = tmp[char] {
                    tmp[char] = count - 1
                    if count <= 1 {
                        tmp.removeValue(forKey: char)
                    }
                }
            }
            if tmp.isEmpty {
                if ans.isEmpty { ans = word }
                ans = ans.count <= word.count ? ans : word
            }
        }
        return ans
    }
}
