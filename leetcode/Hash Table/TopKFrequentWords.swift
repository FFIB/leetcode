//
//  TopKFrequentWords.swift
//  leetcode
//
//  Created by FFIB on 2017/10/12.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//692. Top K Frequent Words
/*
 Given a non-empty list of words, return the k most frequent elements.
 
 Your answer should be sorted by frequency from highest to lowest. If two words have the same frequency, then the word with the lower alphabetical order comes first.
 
 Example 1:
 Input: ["i", "love", "leetcode", "i", "love", "coding"], k = 2
 Output: ["i", "love"]
 Explanation: "i" and "love" are the two most frequent words.
 Note that "i" comes before "love" due to a lower alphabetical order.
 Example 2:
 Input: ["the", "day", "is", "sunny", "the", "the", "the", "sunny", "is", "is"], k = 4
 Output: ["the", "is", "sunny", "day"]
 Explanation: "the", "is", "sunny" and "day" are the four most frequent words,
 with the number of occurrence being 4, 3, 2 and 1 respectively.
 Note:
 You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
 Input words contain only lowercase letters.
 Follow up:
 Try to solve it in O(n log k) time and O(n) extra space.
 */
extension Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var dict = [String: Int]()
        for word in words { dict[word] = (dict[word] ?? 0) + 1 }
       let arr = dict.sorted { (arg0, arg1) -> Bool in
            let (key1, count1) = arg0
            let (key2, count2) = arg1
            if count1 == count2 {
                let count = min(key1.count, key2.count)
                var i = 0
                let chars1 = Array(key1.unicodeScalars)
                let chars2 = Array(key2.unicodeScalars)
                while i < count {
                    if chars1[i].value != chars2[i].value {
                        return chars1[i].value < chars2[i].value
                    }
                    i += 1
                }
                return true
            }else {
                return count1 > count2
            }
        }
        return arr[0..<min(arr.count, k)].map({ (arg0) -> String in
            return arg0.key
        })
    }
}
