//
//  LongestMountaininArray.swift
//  leetcode
//
//  Created by FFIB on 2018/6/13.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//845. Longest Mountain in Array
/*
 Let's call any (contiguous) subarray B (of A) a mountain if the following properties hold:

 B.length >= 3
 There exists some 0 < i < B.length - 1 such that B[0] < B[1] < ... B[i-1] < B[i] > B[i+1] > ... > B[B.length - 1]
 (Note that B could be any subarray of A, including the entire array A.)

 Given an array A of integers, return the length of the longest mountain.

 Return 0 if there is no mountain.

 Example 1:

 Input: [2,1,4,7,3,2,5]
 Output: 5
 Explanation: The largest mountain is [1,4,7,3,2] which has length 5.
 Example 2:

 Input: [2,2,2]
 Output: 0
 Explanation: There is no mountain.
 Note:

 0 <= A.length <= 10000
 0 <= A[i] <= 10000
 Follow up:

 Can you solve it using only one pass?
 Can you solve it in O(1) space?
 */
extension Solution {
    func longestMountain(_ A: [Int]) -> Int {
        var l = 0
        var r = 1
        var isTop = false
        var ans = 0

        let A = A + [10001]

        while r < A.count {
            if !isTop {
                if A[r] < A[r - 1] {
                    if r - l > 1 {
                        isTop = true
                    } else {
                        l = r
                    }
                } else if A[r] == A[r - 1] {
                    l = r
                }
            } else {
                if A[r] >= A[r - 1] {
                    ans = max(ans, r - l)
                    r -= 1
                    l = r

                    isTop = false
                }
            }
            r += 1
        }

        return ans
    }
}
