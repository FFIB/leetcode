//
//  SplitArrayintoConsecutiveSubsequences.swift
//  leetcode
//
//  Created by FFIB on 06/03/2018.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//659. Split Array into Consecutive Subsequences
/*
 You are given an integer array sorted in ascending order (may contain duplicates), you need to split them into several subsequences, where each subsequences consist of at least 3 consecutive integers. Return whether you can make such a split.

 Example 1:
 Input: [1,2,3,3,4,5]
 Output: True
 Explanation:
 You can split them into two consecutive subsequences :
 1, 2, 3
 3, 4, 5
 Example 2:
 Input: [1,2,3,3,4,4,5,5]
 Output: True
 Explanation:
 You can split them into two consecutive subsequences :
 1, 2, 3, 4, 5
 3, 4, 5
 Example 3:
 Input: [1,2,3,4,4,5]
 Output: False
 Note:
 The length of the input is in range of [1, 10000]
 */
extension Solution {
    func isPossible(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        var tail = [Int:Int]()
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }
        for num in nums {
            if let c = dict[num], c == 0 {
                continue
            } else if let c = tail[num], c > 0 {
                tail[num] = c - 1
                tail[num + 1] = (tail[num + 1] ?? 0) + 1
            } else if let c1 = dict[num + 1], c1 > 0, let c2 = dict[num + 2], c2 > 0 {
                dict[num + 1] = c1 - 1
                dict[num + 2] = c2 - 1
                tail[num + 3] = (tail[num + 3] ?? 0) + 1
            } else {
                return false
            }
            dict[num]! -= 1
        }
        return true
    }
}
