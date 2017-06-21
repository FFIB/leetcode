//
//  IntersectionofTwoArraysII.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
