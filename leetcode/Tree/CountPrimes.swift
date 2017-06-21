//
//  CountPrimes.swift
//  leetcode
//
//  Created by LISA on 2017/6/20.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

class CountPrimes {
    func countPrimes(_ n: Int) -> Int {
        if n < 2 {return 0}
        
        guard n > 3 else {
            return Array((2..<n)).count
        }
        
        var numbers = [Int](2..<n)
        var count = n - 2
        for i in 0...Int(sqrt(Double(n)) - 2) {
            guard numbers[i] > 0 else {
                continue
            }
            let prime = numbers[i]
            var j = 2
            while prime * j - 2 < n-2 {
                if numbers[prime * j - 2] != 0 {
                    numbers[prime * j - 2] = 0
                    count -= 1
                }
                j += 1
            }
        }
        return count
    }
}
