//
//  ReorderedPowerof2.swift
//  leetcode
//
//  Created by FFIB on 2018/7/26.
//  Copyright © 2018 FFIB. All rights reserved.
//

import Foundation

//869. Reordered Power of 2
/*
 Starting with a positive integer N, we reorder the digits in any order (including the original order) such that the leading digit is not zero.

 Return true if and only if we can do this in a way such that the resulting number is a power of 2.



 Example 1:

 Input: 1
 Output: true
 Example 2:

 Input: 10
 Output: false
 Example 3:

 Input: 16
 Output: true
 Example 4:

 Input: 24
 Output: false
 Example 5:

 Input: 46
 Output: true


 Note:

 1 <= N <= 10^9
 */

extension Solution {
    func reorderedPowerOf2(_ N: Int) -> Bool {
        var power2N = Array(repeating: 0, count: 10)
        for n in "\(N)" {
            power2N[Int(char.value) - 48] += 1
        }
        return power2.contains(power2N)
    }
}
