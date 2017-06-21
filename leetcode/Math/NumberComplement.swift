//
//  NumberComplement.swift
//  leetcode
//
//  Created by LISA on 2017/6/21.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

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
