//
//  NumberComplement.swift
//  leetcode
//
//  Created by FFIB on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

//476. Number Complement
/*
 Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.
 
 Note:
 The given integer is guaranteed to fit within the range of a 32-bit signed integer.
 You could assume no leading zero bit in the integer’s binary representation.
 Example 1:
 Input: 5
 Output: 2
 Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
 Example 2:
 Input: 1
 Output: 0
 Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.
 */
extension Solution {
    func findComplement(_ num: Int) -> Int {
        var binary = [Int]()
        var number = num
        
        while number > 0 {
            binary.append(number % 2 == 0 ? 1 : 0)
            number /= 2
        }
        
        var count = 0
        var sum = 0.0
        for i in 0..<binary.count {
            if binary[i] == 1 {
                sum += pow(2.0, Double(count))
            }
            count += 1
        }
        return Int(sum)
    }
}
