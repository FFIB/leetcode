//
//  MedianofTwoSortedArrays.swift
//  leetcode
//
//  Created by FFIB on 2017/10/13.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let count = nums1.count + nums2.count
        let k = count / 2 + 1
        var i = 0
        var index1 = 0
        var index2 = 0
        var n1 = 0
        var n2 = 0
        if k <= 1 {
            if nums1.isEmpty && nums2.isEmpty {
                return 0
            }
            return Double(min(nums1.first ?? Int.max, nums2.first ?? Int.max))
        }
        while index1 < nums1.count && index2 < nums2.count && i != k {
            n2 = n1
            if nums1[index1] < nums2[index2] {
                n1 = nums1[index1]
                index1 += 1
            }else {
                n1 = nums2[index2]
                index2 += 1
            }
            i += 1
        }
        if i != k {
            while index1 < nums1.count && i != k {
                n2 = n1
                n1 = nums1[index1]
                index1 += 1
                i += 1
            }
            while index2 < nums2.count && i != k {
                n2 = n1
                n1 = nums2[index2]
                index2 += 1
                i += 1
            }
        }
        return count % 2 == 0 ? (Double(n1) + Double(n2)) / 2.0 : Double(n1)
    }
}
