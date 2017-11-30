//
//  MergeSortedArray.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//88. Merge Sorted Array
/*
 Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
 
 Note:
 You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.
 */
extension Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index1 = 0
        var index2 = 0
        while m != nums1.count {
            nums1.removeLast()
        }
        
        var distance = 0
        while index1 < m + distance && index2 < n {
            if nums1[index1] >= nums2[index2] {
                nums1.insert(nums2[index2], at: index1)
                index1 += 1
                index2 += 1
                distance += 1
            }else {
                index1 += 1
            }
        }
        while index2 < n {
            if  !nums1.isEmpty && nums1.last! >= nums2[index2] {
                nums1.insert(nums2[index2], at: nums1.count - 1)
            }else {
                nums1.append(nums2[index2])
            }
            
            index2 += 1
        }
    }
}
