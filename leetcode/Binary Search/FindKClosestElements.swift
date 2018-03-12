//
//  FindKClosestElements.swift
//  leetcode
//
//  Created by FFIB on 12/03/2018.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//658. Find K Closest Elements
/*
 Given a sorted array, two integers k and x, find the k closest elements to x in the array. The result should also be sorted in ascending order. If there is a tie, the smaller elements are always preferred.

 Example 1:
 Input: [1,2,3,4,5], k=4, x=3
 Output: [1,2,3,4]
 Example 2:
 Input: [1,2,3,4,5], k=4, x=-1
 Output: [1,2,3,4]
 Note:
 The value k is positive and will always be smaller than the length of the sorted array.
 Length of the given array is positive and will not exceed 104
 Absolute value of elements in the array and x will not exceed 104
 */
extension Solution {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {

        func binarySearch() -> Int {
            var l = 0
            var r = arr.count - 1

            while l + 1 < r {
                let mid = (l + r) / 2
                if arr[mid] == x {
                    return mid
                }else if arr[mid] > x {
                    r = mid
                }else {
                    l = mid
                }
            }
            return r
        }

        guard arr.count > 0 else { return [] }

        if arr[0] > x { return Array(arr[0..<min(k, arr.count)]) }
        if arr.last! < x { return Array(arr[max(arr.count - k, 0)..<arr.count]) }

        let index = binarySearch()
        var l = max(0, index - k)
        var r = min(index + k, arr.count - 1)

        while r - l != k - 1 {
            if x - arr[l] > arr[r] - x {
                l += 1
            }else {
                r -= 1
            }
        }

        return Array(arr[l...r])
    }
}
