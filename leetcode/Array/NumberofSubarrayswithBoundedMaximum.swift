//
//  NumberofSubarrayswithBoundedMaximum.swift
//  leetcode
//
//  Created by FFIB on 09/03/2018.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//795. Number of Subarrays with Bounded Maximum
/*
 We are given an array A of positive integers, and two positive integers L and R (L <= R).

 Return the number of (contiguous, non-empty) subarrays such that the value of the maximum array element in that subarray is at least L and at most R.

 Example :
 Input:
 A = [2, 1, 4, 3]
 L = 2
 R = 3
 Output: 3
 Explanation: There are three subarrays that meet the requirements: [2], [2, 1], [3].
 Note:

 L, R  and A[i] will be an integer in the range [0, 10^9].
 The length of A will be in the range of [1, 50000].
 */
extension Solution {
    func numSubarrayBoundedMax(_ A: [Int], _ L: Int, _ R: Int) -> Int {
        var ans = 0
        var lastIndex = 0
        for (i, a) in (A+[R+1]).enumerated() {

            if a > R {
                let c = i - lastIndex
                var last = 0
                for (j, subA) in A[lastIndex..<i].enumerated() {
                    if subA >= L {
                        ans += (j - last + 1) * (c - j)
                        last = j + 1
                    }
                }
                lastIndex = i + 1
            }
        }
        return ans
    }
}
