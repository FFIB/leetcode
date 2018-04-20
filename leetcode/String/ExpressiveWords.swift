//
//  ExpressiveWords.swift
//  leetcode
//
//  Created by FFIB on 2018/4/20.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//809. Expressive Words
/*
 Sometimes people repeat letters to represent extra feeling, such as "hello" -> "heeellooo", "hi" -> "hiiii".  Here, we have groups, of adjacent letters that are all the same character, and adjacent characters to the group are different.  A group is extended if that group is length 3 or more, so "e" and "o" would be extended in the first example, and "i" would be extended in the second example.  As another example, the groups of "abbcccaaaa" would be "a", "bb", "ccc", and "aaaa"; and "ccc" and "aaaa" are the extended groups of that string.

 For some given string S, a query word is stretchy if it can be made to be equal to S by extending some groups.  Formally, we are allowed to repeatedly choose a group (as defined above) of characters c, and add some number of the same character c to it so that the length of the group is 3 or more.  Note that we cannot extend a group of size one like "h" to a group of size two like "hh" - all extensions must leave the group extended - ie., at least 3 characters long.

 Given a list of query words, return the number of words that are stretchy.

 Example:
 Input:
 S = "heeellooo"
 words = ["hello", "hi", "helo"]
 Output: 1
 Explanation:
 We can extend "e" and "o" in the word "hello" to get "heeellooo".
 We can't extend "helo" to get "heeellooo" because the group "ll" is not extended.
 Notes:

 0 <= len(S) <= 100.
 0 <= len(words) <= 100.
 0 <= len(words[i]) <= 100.
 S and all words in words consist only of lowercase letters
 */
extension Solution {
    func expressiveWords(_ S: String, _ words: [String]) -> Int {
        func charCount(str: String) -> [(Character, Int)] {
            var ans = [(Character, Int)]()
            var lastChar: Character = Character("1")
            var count = 0
            for char in str {
                if lastChar == char {
                    count += 1
                }else {
                    if count > 0 { ans.append((char, count)) }
                    lastChar = char
                    count = 1
                }
            }
            if count > 0 { ans.append((lastChar, count)) }
            return ans
        }

        func checkWord(st: [(Character, Int)], wt: [(Character, Int)]) -> Int {
            guard st.count == wt.count else { return 0 }
            for (v1, v2) in zip(st, wt) {
                if v1.0 != v2.0 { return 0 }
                if v1.1 < v2.1 { return 0 }
                if v1.1 != v2.1 && v1.1 < 3 { return 0 }
            }
            return 1
        }

        let st = charCount(str: S)
        return words.reduce(0) { (res, word) -> Int in
            return res + checkWord(dict: st, extendDict: charCount(str: word))
        }
    }
}
