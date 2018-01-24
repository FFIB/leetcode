//
//  HammingDistance.swift
//  leetcode
//
//  Created by FFIB on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//461. Hamming Distance
/*
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 Note:
 0 ≤ x, y < 231.
 
 Example:
 
 Input: x = 1, y = 4
 
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
 ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.
 */
extension Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var xor = x^y
        var count = 0
        while xor != 0 {
            xor = (xor - 1) & xor
            count += 1
        }
        return count
    }
}
