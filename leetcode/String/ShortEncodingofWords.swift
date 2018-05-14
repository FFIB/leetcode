//
//  ShortEncodingofWords.swift
//  leetcode
//
//  Created by FFIB on 2018/5/14.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation
//820. Short Encoding of Words
/*
 Given a list of words, we may encode it by writing a reference string S and a list of indexes A.

 For example, if the list of words is ["time", "me", "bell"], we can write it as S = "time#bell#" and indexes = [0, 2, 5].

 Then for each index, we will recover the word by reading from the reference string from that index until we reach a "#" character.

 What is the length of the shortest reference string S possible that encodes the given words?

 Example:

 Input: words = ["time", "me", "bell"]
 Output: 10
 Explanation: S = "time#bell#" and indexes = [0, 2, 5].
 Note:

 1 <= words.length <= 2000.
 1 <= words[i].length <= 7.
 Each word has only lowercase letters.
 */
extension Solution {
    func minimumLengthEncoding(_ words: [String]) -> Int {
        var ans = 0
        var last = ""

        for word in (words.map{ String($0.reversed())}.sorted{$0 > $1} + [""]){
            if !last.hasPrefix(word) {
                ans += word.count + 1
            }
            last = word
        }
        return ans
    }
}
