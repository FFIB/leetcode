//
//  IntersectionofTwoArrays.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//349. Intersection of Two Arrays
/*
 Given two arrays, write a function to compute their intersection.
 
 Example:
 Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].
 
 Note:
 Each element in the result must be unique.
 The result can be in any order.
 */
extension Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums3 = Set<Int>()
        var nums4 = Set<Int>()
        var result = [Int]()
        for i in 0..<nums1.count {
            nums3.insert(nums1[i])
        }
        
        for i in 0..<nums2.count {
            nums4.insert(nums2[i])
        }
        
        for i in 0..<nums2.count {
            if nums3.contains(nums2[i]) {
                result.append(nums2[i])
                nums3.remove(nums2[i])
                
            }
        }
        return result
    }
}
