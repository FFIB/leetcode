//
//  PartitionLabels.swift
//  leetcode
//
//  Created by FFIB on 2018/1/17.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//763. Partition Labels
/*
 A string S of lowercase letters is given. We want to partition this string into as many parts as possible so that each letter appears in at most one part, and return a list of integers representing the size of these parts.
 
 Example 1:
 Input: S = "ababcbacadefegdehijhklij"
 Output: [9,7,8]
 Explanation:
 The partition is "ababcbaca", "defegde", "hijhklij".
 This is a partition so that each letter appears in at most one part.
 A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits S into less parts.
 Note:
 
 S will have length in range [1, 500].
 S will consist of lowercase letters ('a' to 'z') only.
 */
extension Solution {
    func partitionLabels(_ S: String) -> [Int] {
        var hash = Array(repeating: (-1, -1), count: 26)
        for (i, char) in S.unicodeScalars.enumerated() {
            let n = Int(char.value) - 97
            if hash[n].0 == -1 {
                hash[n] = (i, i)
            }else {
                hash[n].1 = i
            }
        }
    
        var index = 0
        while index < hash.count {
            if hash[index].0 == -1 {
                hash.remove(at: index)
            }else {
                index += 1
            }
        }
        
        hash.sort{ $0.0 < $1.0 }
        
        var ans = [Int]()
        var maxIndex = 0
        var minIndex = 0
        
        for (start, end) in hash {
            if start > maxIndex {
                ans.append(maxIndex - minIndex + 1)
                maxIndex = end
                minIndex = start
            }else {
                maxIndex = max(maxIndex, end)
            }
        }
        ans.append(maxIndex - minIndex + 1)
        return ans
    }
}
