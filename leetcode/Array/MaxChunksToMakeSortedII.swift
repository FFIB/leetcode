//
//  MaxChunksToMakeSortedII.swift
//  leetcode
//
//  Created by FFIB on 2018/1/25.
//  Copyright © 2018年 FFIB. All rights reserved.
//

import Foundation

//768. Max Chunks To Make Sorted II
/*
 This question is the same as "Max Chunks to Make Sorted" except the integers of the given array are not necessarily distinct, the input array could be up to length 2000, and the elements could be up to 10**8.

 Given an array arr of integers (not necessarily distinct), we split the array into some number of "chunks" (partitions), and individually sort each chunk.  After concatenating them, the result equals the sorted array.

 What is the most number of chunks we could have made?

 Example 1:

 Input: arr = [5,4,3,2,1]
 Output: 1
 Explanation:
 Splitting into two or more chunks will not return the required result.
 For example, splitting into [5, 4], [3, 2, 1] will result in [4, 5, 1, 2, 3], which isn't sorted.
 Example 2:

 Input: arr = [2,1,3,4,4]
 Output: 4
 Explanation:
 We can split into two chunks, such as [2, 1], [3, 4, 4].
 However, splitting into [2, 1], [3], [4], [4] is the highest number of chunks possible.
 */
extension Solution {
    func maxChunksToSortedII(_ arr: [Int]) -> Int {
        var ans = 0
        var dict = [Int: Int]()
        var zero = 0

        for (x, y) in zip(arr, arr.sorted()) {
            dict[x] = (dict[x] ?? 0) + 1
            if dict[x] == 0 {zero -= 1 }
            if dict[x] == 1 { zero += 1 }

            dict[y] = (dict[y] ?? 0) - 1
            if dict[y] == -1 { zero += 1 }
            if dict[y] == 0 { zero -= 1 }

            if zero == 0 { ans += 1 }
        }
        return ans
    }
}
