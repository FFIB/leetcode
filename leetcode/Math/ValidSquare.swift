//
//  ValidSquare.swift
//  leetcode
//
//  Created by FFIB on 2017/8/23.
//  Copyright © 2017年 FFIB. All rights reserved.
//

import Foundation

extension Solution {
    func validSquare(_ p1: [Int], _ p2: [Int], _ p3: [Int], _ p4: [Int]) -> Bool {
        var arr = [(p1[0], p1[1]), (p2[0], p2[1]), (p3[0], p3[1]), (p4[0], p4[1])]
        var length = Set<Int>()
        for i in 0..<arr.count {
            for j in i+1..<arr.count {
                let x = abs(arr[i].0 - arr[j].0)
                let y = abs(arr[i].1 - arr[j].1)
                length.insert(x * x + y * y)
            }
        }
        print(length)
        if length.count != 2 {
            return false
        }else {
            let first = length.removeFirst()
            let second = length.removeFirst()
            if first > second {
                return first == second * 2
            }else {
                return second == first * 2
            }
        }
    }
}
