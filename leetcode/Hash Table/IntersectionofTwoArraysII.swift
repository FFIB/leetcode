//
//  IntersectionofTwoArraysII.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//350. Intersection of Two Arrays II
/*
 Given two arrays, write a function to compute their intersection.
 
 Example:
 Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
 
 Note:
 Each element in the result should appear as many times as it shows in both arrays.
 The result can be in any order.
 Follow up:
 What if the given array is already sorted? How would you optimize your algorithm?
 What if nums1's size is small compared to nums2's size? Which algorithm is better?
 What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
 */
extension Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var dict = [Int : Int]()
        for i in nums1 {
            dict[i] = dict[i] == nil ? 1 : dict[i]! + 1
        }
        for i in nums2 {
            if dict[i] != nil && dict[i]! > 0 {
                dict[i] = dict[i]! - 1
                result.append(i)
            }
        }
        
        return result
    }
}
